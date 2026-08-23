<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻数据可视化</title>
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 30px;
        }
        .chart {
            width: 45%;
            height: 400px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            padding: 15px;
        }
        /* 仪表盘样式调整 */
        #exposureGauge {
            width: 100%;
            height: 300px;
        }
        .info {
            width: 100%;
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>新闻数据可视化平台</h1>
    
    <div class="info">
        <span>总新闻话题数: <span id="newssum">0</span></span>
    </div>
    
    <div class="container">
        <!-- 圆形仪表盘 -->
        <div class="chart" id="exposureGauge"></div>
        <!-- 柱状图 -->
        <div class="chart" id="newsRankChart"></div>
        <div class="chart" id="periodRankChart"></div>
    </div>
    
    <script type="text/javascript">
        // 初始化图表
        var newsRankChart = echarts.init(document.getElementById('newsRankChart'));
        var periodRankChart = echarts.init(document.getElementById('periodRankChart'));
        var exposureGauge = echarts.init(document.getElementById('exposureGauge'));
        
        // 配置选项
        var newsRankOption = {
            title: {
                text: '新闻浏览量排行TOP10',
                left: 'center'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            xAxis: {
                type: 'category',
                data: [],
                axisLabel: {
                    interval: 0,
                    rotate: 30
                }
            },
            yAxis: {
                type: 'value',
                name: '浏览量'
            },
            series: [{
                name: '浏览量',
                type: 'bar',
                data: [],
                itemStyle: {
                    color: '#3398DB'
                }
            }]
        };
        
        var periodRankOption = {
            title: {
                text: '时段新闻浏览量排行',
                left: 'center'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            xAxis: {
                type: 'category',
                data: [],
                name: '时段'
            },
            yAxis: {
                type: 'value',
                name: '浏览量'
            },
            series: [{
                name: '浏览量',
                type: 'bar',
                data: [],
                itemStyle: {
                    color: '#E74C3C'
                }
            }]
        };
        
        // 仪表盘配置选项
        var exposureGaugeOption = {
            title: {
                text: '新闻话题曝光量【实时】统计',
                left: 'center',
                textStyle: {
                    fontSize: 16
                }
            },
            tooltip: {
                formatter: '{a} <br/>{b} : {c}'
            },
            series: [{
                name: '曝光量',
                type: 'gauge',
                detail: {
                    formatter: '{value}'
                },
                data: [{
                    value: 0,
                    name: '实时曝光量'
                }],
                min: 0,
                max: 10000,
                axisLine: {
                    lineStyle: {
                        width: 20,
                        color: [
                            [0.3, '#67E0E3'],
                            [0.7, '#37A2DA'],
                            [1, '#FD666D']
                        ]
                    }
                },
                pointer: {
                    itemStyle: {
                        color: 'auto'
                    }
                },
                axisTick: {
                    distance: -30,
                    length: 8,
                    lineStyle: {
                        color: 'auto',
                        width: 2
                    }
                },
                splitLine: {
                    distance: -30,
                    length: 30,
                    lineStyle: {
                        color: 'auto',
                        width: 4
                    }
                },
                axisLabel: {
                    color: 'auto',
                    distance: -40,
                    fontSize: 14
                },
                title: {
                    color: '#333',
                    fontSize: 14
                },
                detail: {
                    color: 'auto',
                    fontSize: 28,
                    offsetCenter: [0, '60%'],
                    valueAnimation: true
                }
            }]
        };
        
        // 设置图表选项
        newsRankChart.setOption(newsRankOption);
        periodRankChart.setOption(periodRankOption);
        exposureGauge.setOption(exposureGaugeOption);
        
        // 从服务器获取数据
        $.ajax({
            url: 'NewsSvlt',
            type: 'POST',
            dataType: 'json',
            success: function(data) {
                console.log('Data received:', data);
                
                // 更新总新闻话题数
                $('#newssum').text(data.newssum);
                
                // 更新新闻话题曝光量仪表盘
                exposureGauge.setOption({
                    series: [{
                        data: [{
                            value: data.newssum,
                            name: '实时曝光量'
                        }]
                    }]
                });
                
                // 更新新闻浏览量排行榜
                newsRankChart.setOption({
                    xAxis: {
                        data: data.name
                    },
                    series: [{
                        data: data.newscount
                    }]
                });
                
                // 更新时段浏览量排行榜
                periodRankChart.setOption({
                    xAxis: {
                        data: data.logtime
                    },
                    series: [{
                        data: data.periodcount
                    }]
                });
            },
            error: function(xhr, status, error) {
                console.error('Error fetching data:', error);
                alert('获取数据失败，请检查服务器连接');
            }
        });
        
        // 响应式处理
        window.addEventListener('resize', function() {
            newsRankChart.resize();
            periodRankChart.resize();
            exposureGauge.resize();
        });
    </script>
</body>
</html>
