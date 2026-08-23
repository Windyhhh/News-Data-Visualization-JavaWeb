package com.djt.bean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class JDBCHelper {

	//第一步：加载驱动
	static{

		try {
			ConfigurationManager.getProperty(Constants.JDBC_DRIVER);
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//第二步，实现JDBCHelper的单例化
	private static JDBCHelper instance = null;

	public static JDBCHelper getInstance(){
		if(instance == null){
			synchronized (JDBCHelper.class){
				if(instance == null){
					instance = new JDBCHelper();
				}
			}
		}
		return instance;
	}

	//第三步：创建数据库连接池
	private LinkedList<Connection> datasource = new LinkedList<Connection>();

	private JDBCHelper(){
		int size = ConfigurationManager.getInteger(Constants.JDBC_DATASOURCE_SIZE);
		for(int i = 0;i <size ;i++){
			String url = ConfigurationManager.getProperty(Constants.JDBC_URL);
			String user = ConfigurationManager.getProperty(Constants.JDBC_USER);
			String password = ConfigurationManager.getProperty(Constants.JDBC_PASSWORD);
			try {
				Connection conn = DriverManager.getConnection(url, user, password);
				datasource.push(conn);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	//第四步：提供获取数据库连接
	public synchronized Connection getConnection(){
		while(datasource.size() == 0){
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return datasource.poll();
	}

	//第五步：执行查询SQL语句
	public synchronized void executeQuery(String sql,Object[] params,QueryCallback callback) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			if(null !=params){
				for(int i=0;i<params.length;i++){
					pstmt.setObject(i+1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
			callback.process(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(conn !=null){
				datasource.push(conn);
			}
		}
	}

	// 执行查询并处理结果（不返回ResultSet，避免资源泄漏）
	public synchronized void executeQuerySync(String sql, Object[] params, QueryCallback callback) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			if (null != params) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
			callback.process(rs);
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			// 关闭结果集
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			// 关闭预处理语句
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			// 归还连接到连接池
			if (conn != null) {
				datasource.push(conn);
			}
		}
	}

	public static interface QueryCallback{
		void process(ResultSet rs) throws Exception;
	}
}
