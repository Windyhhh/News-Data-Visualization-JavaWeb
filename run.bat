@echo off
chcp 65001 >nul
echo ========================================
echo 新闻数据可视化平台一键运行脚本
echo ========================================
echo.

REM 检查Java是否安装
echo 检查Java环境...
java -version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 错误: 未检测到Java环境，请先安装JDK 1.8或更高版本
    pause
    exit /b 1
)

REM 检查Maven是否安装
echo 检查Maven环境...
mvn -version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 错误: 未检测到Maven环境，请先安装Maven
    pause
    exit /b 1
)

echo 环境检查通过！
echo.

REM 清理旧的构建文件
echo 清理旧的构建文件...
mvn clean
if %ERRORLEVEL% neq 0 (
    echo 错误: 清理构建失败
    pause
    exit /b 1
)

echo.

REM 编译和打包项目
echo 编译和打包项目...
mvn package -DskipTests
if %ERRORLEVEL% neq 0 (
    echo 错误: 项目打包失败
    pause
    exit /b 1
)

echo.

REM 启动Tomcat服务器
echo 启动Tomcat服务器...
echo 访问地址: http://localhost:8080/newsWeb
echo 按 Ctrl+C 停止服务器
echo.
mvn tomcat7:run

pause
