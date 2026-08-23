# 📰 News Data Visualization Java Web | 新闻数据可视化平台

> **Real-time news data visualization platform built with Java Web (Servlet + JSP). ECharts-powered interactive charts, JDBC database integration, jQuery frontend, and Maven build. Display news trends, categories, and statistics in real-time.**
>
> 基于 Java Web（Servlet + JSP）的实时新闻数据可视化平台。ECharts 交互式图表、JDBC 数据库集成、jQuery 前端、Maven 构建。实时展示新闻趋势、分类和统计数据。

---

## 🌟 Features | 核心特性

- **Java Web Stack** — Servlet + JSP + JDBC
- **ECharts Visualization** — Interactive charts (line, bar, pie, etc.)
- **Real-time Data** — Live news data updates
- **JDBC Integration** — MySQL database connectivity
- **jQuery Frontend** — AJAX-based dynamic updates
- **Maven Build** — Standard Java EE project structure
- **Configuration Management** — Externalized properties config
- **One-Click Run** — Windows batch script

---

## 📁 Project Structure | 项目结构

```
News-Data-Visualization-JavaWeb/
├── src/main/java/com/djt/
│   ├── bean/
│   │   ├── ConfigurationManager.java   # Config manager
│   │   ├── Constants.java               # Constants
│   │   └── JDBCHelper.java              # JDBC utility
│   └── servlet/
│       ├── NewsSvlt.java                 # News data servlet
│       └── TestServlet.java              # Test servlet
├── src/main/resource/
│   └── my.properties                      # Configuration
├── src/main/webapp/
│   ├── index.jsp                          # Main page
│   ├── js/
│   │   ├── echarts.min.js                 # ECharts library
│   │   └── jquery-3.2.1.js               # jQuery
│   └── WEB-INF/
│       └── web.xml                        # Web config
├── pom.xml                                # Maven config
├── run.bat                                # Run script
├── newsWeb.iml                            # IntelliJ config
├── .idea/                                 # IDE config
├── README.md
├── 新闻数据可视化平台_爆款博客.md
└── 博客要求
```

---

## 🚀 Quick Start | 快速开始

```bash
# Build with Maven
mvn clean package

# Deploy to Tomcat
# Copy target/newsWeb.war to TOMCAT_HOME/webapps/

# Or run with batch script
run.bat

# Access in browser
# http://localhost:8080/newsWeb/
```

### Prerequisites | 前置条件

- Java 8+
- Maven 3.6+
- Apache Tomcat 8.5+
- MySQL 5.7+ (for news data)

---

## 📊 Visualization Charts | 可视化图表

| Chart | Type | Description |
|-------|------|-------------|
| **News Trend** | Line chart | News count over time |
| **Category Distribution** | Pie chart | News by category |
| **Source Ranking** | Bar chart | Top news sources |
| **Keyword Cloud** | Word cloud | Hot keywords |
| **Sentiment Analysis** | Gauge | Positive/negative ratio |
| **Regional Heatmap** | Map | News by region |

---

## 🔧 Architecture | 架构

```
Browser (JSP + ECharts + jQuery)
    ↓ AJAX
Servlet (NewsSvlt)
    ↓ JDBC
MySQL Database (news data)
```

### Data Flow | 数据流

1. Browser loads `index.jsp` with ECharts initialized
2. jQuery AJAX calls `NewsSvlt` at regular intervals
3. Servlet queries MySQL via `JDBCHelper`
4. Returns JSON response with news statistics
5. ECharts updates charts with new data

---

## 📝 Configuration | 配置

### my.properties

```properties
jdbc.driver=com.mysql.cj.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/news_db?useSSL=false
jdbc.username=root
jdbc.password=your_password

# Chart update interval (ms)
update.interval=5000

# Max news records to display
max.records=1000
```

---

## 📚 References | 参考文献

1. **Apache.** (2024). *Apache Tomcat Documentation.*
2. **ECharts.** (2024). *Apache ECharts Documentation.* https://echarts.apache.org/
3. **Oracle.** (2024). *Java Servlet Technology Documentation.*
4. **MySQL.** (2024). *MySQL Connector/J Documentation.*

---

## 📄 License | 许可证

MIT License.

---

<div align="center">

**Built with 📰 for data journalism**

[GitHub](https://github.com/Windyhhh/News-Data-Visualization-JavaWeb)

</div>
