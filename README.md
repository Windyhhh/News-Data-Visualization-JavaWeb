<div align="center">

# 📰 News-Data-Visualization-JavaWeb

### Real-time news data visualization with Java Web.

Java Servlet + JSP, ECharts, JDBC and jQuery — a Maven-based real-time news visualization app.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Java](https://img.shields.io/badge/Java-8+-007396?logo=openjdk&logoColor=white)](https://openjdk.org/)
[![JSP](https://img.shields.io/badge/JSP-Servlet-orange)](https://www.oracle.com/java/technologies/jspt.html)
[![ECharts](https://img.shields.io/badge/ECharts-5-AA344D?logo=apacheecharts&logoColor=white)](https://echarts.apache.org/)

</div>

---

**News-Data-Visualization-JavaWeb** is a Maven-based real-time **news data visualization** web app built with **Java Servlet + JSP**, **JDBC**, **jQuery** and **ECharts**.

> [!NOTE]
> 中文项目：Java Servlet + JSP，ECharts，JDBC，jQuery，Maven 实时新闻可视化。

---

## Quickstart

```bash
git clone https://github.com/Windyhhh/News-Data-Visualization-JavaWeb.git
cd News-Data-Visualization-JavaWeb

# Deploy to Tomcat (run.bat for a quick setup)
mvn clean package
```

The servlet layer (`com.djt.servlet`) serves news data to the ECharts frontend via JDBC.

---

## Features

- **Servlet + JSP** — classic Java Web stack.
- **ECharts visualization** — interactive news charts.
- **JDBC data access** — `JDBCHelper` + config-driven datasource.

---

## Project Structure

```
News-Data-Visualization-JavaWeb/
├── src/main/java/com/djt/
│   ├── servlet/          # NewsSvlt, TestServlet
│   └── bean/             # ConfigurationManager, Constants, JDBCHelper
├── src/main/webapp/      # index.jsp, echarts, jquery
├── pom.xml
└── run.bat
```

---

## License

MIT — free to use, modify and distribute.
