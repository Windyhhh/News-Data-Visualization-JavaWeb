<div align="center">

# 📊 News-Data-Visualization-JavaWeb

### A JavaWeb news data-visualization platform with ECharts.

Real-time news metrics (views, exposure) visualized through Java Servlet + MySQL + ECharts, with linked charts and responsive UI.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Java](https://img.shields.io/badge/Java-8-007396?logo=java&logoColor=white)](https://www.java.com/)
[![Servlet](https://img.shields.io/badge/Servlet-4-007396)](https://jakarta.ee/specifications/servlet/)
[![MySQL](https://img.shields.io/badge/MySQL-8-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![ECharts](https://img.shields.io/badge/ECharts-4-AA344D?logo=apacheecharts&logoColor=white)](https://echarts.apache.org/)

</div>

---

**News-Data-Visualization-JavaWeb** is a news data-visualization platform built on the **JavaWeb** stack — **Java Servlet** backend, **MySQL** storage and **ECharts** frontend — presenting real-time news views / exposure with linked charts and a responsive UI.

> [!NOTE]
> 中文项目：新闻数据可视化平台——Java Servlet + MySQL + ECharts，实时话题曝光量/浏览量多图表联动展示。

---

## Features

- **Real-time metrics** — news views, exposure, topic trends.
- **Linked charts** — multi-chart interaction (ECharts 4.x).
- **Responsive UI** — HTML5 + CSS3 + JavaScript.
- **Relational storage** — MySQL data layer.
- **Full stack** — Servlet backend serving chart data over HTTP.

---

## Quickstart

```bash
git clone https://github.com/Windyhhh/News-Data-Visualization-JavaWeb.git
cd News-Data-Visualization-JavaWeb

# 1. create the MySQL database & tables (see sql/init.sql)
# 2. configure db credentials in webapp config
# 3. deploy the WAR to Tomcat
```

---

## Project Structure

```
News-Data-Visualization-JavaWeb/
├── src/                    # Java Servlet classes
├── webapp/
│   ├── WEB-INF/
│   ├── css/ js/            # frontend
│   └── index.html          # ECharts dashboard
├── sql/init.sql            # schema
└── docs/                   # blog, usage
```

---

## License

MIT — free to use, modify and distribute.
