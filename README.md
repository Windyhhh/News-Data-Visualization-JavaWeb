# 📰 新闻数据可视化 Java Web 系统 | News Data Visualization Java Web

> **基于 Java Web 的新闻大数据可视化系统——新闻采集、文本分析、情感分析、主题建模、可视化看板，打造数据驱动的新闻洞察平台。**
>
> *News big data visualization system based on Java Web — news collection, text analysis, sentiment analysis, topic modeling, visualization dashboard, building a data-driven news insight platform.*

---

## ⭐ 核心卖点 | Why Star This

| 卖点 | Feature | 一句话 |
|------|---------|--------|
| 📰 **新闻采集** | News Collection | 多源新闻数据采集，支持 RSS、API、网页爬虫 |
| 🔍 **文本分析** | Text Analysis | 分词、关键词提取、文本分类、摘要生成 |
| 😊 **情感分析** | Sentiment Analysis | 新闻情感倾向分析，正面/中性/负面自动识别 |
| 📊 **主题建模** | Topic Modeling | LDA 主题模型，自动发现新闻热点话题 |
| 📈 **可视化看板** | Visual Dashboard | ECharts 交互式数据看板，多维度新闻洞察 |

---

## 🏆 技术栈 | Tech Stack

![Java](https://img.shields.io/badge/Java-8+-blue?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5+-green?logo=spring)
![MyBatis](https://img.shields.io/badge/MyBatis-3.5+-red?logo=mybatis)
![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue?logo=mysql)
![Redis](https://img.shields.io/badge/Redis-7.0+-red?logo=redis)
![Elasticsearch](https://img.shields.io/badge/Elasticsearch-7.10+-blue?logo=elasticsearch)
![Vue.js](https://img.shields.io/badge/Vue-3.0+-brightgreen?logo=vuedotjs)
![ECharts](https://img.shields.io/badge/ECharts-5.0+-orange?logo=apacheecharts)
![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)

---

## 📊 系统模块 | System Modules

| 模块 | 功能 | 说明 |
|------|------|------|
| 🕷️ 新闻采集 | 多源数据采集 | RSS订阅、API对接、网页爬虫 |
| 🧹 数据清洗 | 去重、清洗、标准化 | 去除重复新闻，清洗HTML标签，标准化格式 |
| 🔍 文本分析 | 分词、关键词、摘要 | 中文分词、TF-IDF关键词、TextRank摘要 |
| 😊 情感分析 | 情感倾向识别 | 基于词典/深度学习的情感分析 |
| 📊 主题建模 | LDA主题发现 | 自动发现新闻热点话题和趋势 |
| 🏷️ 自动分类 | 新闻分类 | 政治、经济、科技、体育等自动分类 |
| 📈 可视化看板 | 数据可视化 | ECharts交互式图表，多维度展示 |
| 🔎 全文检索 | 新闻搜索 | Elasticsearch全文检索，高亮显示 |
| 📱 响应式前端 | 多端适配 | Vue3 + Element Plus，响应式设计 |

---

## 🚀 快速开始 | Quick Start

```bash
git clone https://github.com/Windyhhh/News-Data-Visualization-JavaWeb.git
cd News-Data-Visualization-JavaWeb

# 1. 启动依赖服务
docker-compose up -d mysql redis elasticsearch

# 2. 初始化数据库
mysql -u root -p < sql/init.sql

# 3. 启动 Python NLP 服务 (文本分析、情感分析)
cd nlp-service
pip install -r requirements.txt
python app.py --port 5000

# 4. 启动 Java 后端
cd ../backend
mvn spring-boot:run

# 5. 启动前端
cd ../frontend
npm install
npm run dev

# 6. 访问系统
# 前端: http://localhost:8080
# 后端 API: http://localhost:8081/api
# NLP 服务: http://localhost:5000
# Elasticsearch: http://localhost:9200
```

---

## 📂 项目结构 | Project Structure

```
News-Data-Visualization-JavaWeb/
├── backend/                    # Spring Boot 后端
│   ├── src/main/java/com/news/
│   │   ├── NewsApplication.java
│   │   ├── config/             # 配置类
│   │   │   ├── ElasticsearchConfig.java
│   │   │   ├── RedisConfig.java
│   │   │   └── WebConfig.java
│   │   ├── controller/         # 控制器层
│   │   │   ├── NewsController.java
│   │   │   ├── AnalysisController.java
│   │   │   ├── DashboardController.java
│   │   │   └── SearchController.java
│   │   ├── service/            # 业务层
│   │   │   ├── NewsService.java
│   │   │   ├── CrawlerService.java
│   │   │   ├── AnalysisService.java
│   │   │   ├── SentimentService.java
│   │   │   └── TopicService.java
│   │   ├── mapper/             # 持久层
│   │   │   ├── NewsMapper.java
│   │   │   ├── CategoryMapper.java
│   │   │   └── StatisticsMapper.java
│   │   ├── entity/             # 实体类
│   │   │   ├── News.java
│   │   │   ├── Category.java
│   │   │   ├── NewsStatistics.java
│   │   │   └── Topic.java
│   │   ├── dto/                # 数据传输对象
│   │   ├── crawler/            # 爬虫模块
│   │   │   ├── NewsCrawler.java
│   │   │   ├── RssCrawler.java
│   │   │   └── ApiCrawler.java
│   │   ├── nlp/                # NLP 客户端
│   │   │   ├── NlpClient.java
│   │   │   └── NlpResult.java
│   │   └── util/               # 工具类
│   ├── src/main/resources/
│   │   ├── application.yml
│   │   ├── mapper/             # MyBatis 映射
│   │   └── static/
│   └── pom.xml
├── frontend/                   # Vue 3 前端
│   ├── src/
│   │   ├── views/              # 页面
│   │   │   ├── Dashboard.vue   # 数据看板
│   │   │   ├── NewsList.vue    # 新闻列表
│   │   │   ├── NewsDetail.vue  # 新闻详情
│   │   │   ├── Analysis.vue    # 分析中心
│   │   │   ├── Sentiment.vue   # 情感分析
│   │   │   ├── Topics.vue      # 话题发现
│   │   │   └── Search.vue      # 新闻搜索
│   │   ├── components/         # 组件
│   │   │   ├── charts/         # 图表组件
│   │   │   │   ├── LineChart.vue
│   │   │   │   ├── BarChart.vue
│   │   │   │   ├── PieChart.vue
│   │   │   │   ├── WordCloud.vue
│   │   │   │   └── MapChart.vue
│   │   │   ├── NewsCard.vue
│   │   │   └── FilterPanel.vue
│   │   ├── api/                # API 调用
│   │   ├── store/              # Pinia 状态管理
│   │   ├── router/             # 路由
│   │   └── utils/              # 工具函数
│   └── package.json
├── nlp-service/                # Python NLP 服务
│   ├── app.py                  # Flask 应用
│   ├── requirements.txt
│   ├── nlp/
│   │   ├── tokenizer.py        # 分词
│   │   ├── keywords.py         # 关键词提取
│   │   ├── summary.py          # 摘要生成
│   │   ├── sentiment.py        # 情感分析
│   │   ├── classification.py   # 文本分类
│   │   └── topic_modeling.py   # 主题建模 (LDA)
│   ├── models/                 # 模型文件
│   └── data/                   # 词典、停用词
├── sql/
│   └── init.sql                # 数据库初始化
├── docker-compose.yml          # Docker 编排
└── README.md
```

---

## 🔬 核心功能 | Core Features

### 新闻采集 | News Collection

```java
// 多源新闻采集服务
@Service
public class CrawlerService {
    
    @Autowired
    private RssCrawler rssCrawler;
    
    @Autowired
    private ApiCrawler apiCrawler;
    
    @Autowired
    private NewsCrawler newsCrawler;
    
    @Scheduled(fixedRate = 3600000) // 每小时执行一次
    public void scheduledCrawl() {
        // 1. RSS 订阅源采集
        List<News> rssNews = rssCrawler.crawl(getRssSources());
        
        // 2. API 对接采集 (如新浪新闻API、腾讯新闻API)
        List<News> apiNews = apiCrawler.crawl(getApiSources());
        
        // 3. 网页爬虫采集 (针对无API的网站)
        List<News> crawlNews = newsCrawler.crawl(getCrawlSources());
        
        // 4. 合并并去重
        List<News> allNews = mergeAndDedup(rssNews, apiNews, crawlNews);
        
        // 5. 数据清洗
        allNews = cleanNews(allNews);
        
        // 6. 文本分析 (调用 Python NLP 服务)
        allNews = analyzeNews(allNews);
        
        // 7. 存储到 MySQL 和 Elasticsearch
        saveNews(allNews);
    }
    
    private List<NewsSource> getRssSources() {
        // 配置 RSS 源: 新华网、人民网、央视新闻等
        return Arrays.asList(
            new NewsSource("新华网", "http://www.xinhuanet.com/politics/news_politics.xml", "rss"),
            new NewsSource("人民网", "http://www.people.com.cn/rss/politics.xml", "rss"),
            new NewsSource("央视新闻", "https://news.cctv.com/rss/china.xml", "rss")
        );
    }
}

// RSS 爬虫实现
public class RssCrawler {
    public List<News> crawl(List<NewsSource> sources) {
        List<News> newsList = new ArrayList<>();
        for (NewsSource source : sources) {
            try {
                // 使用 Rome 库解析 RSS
                SyndFeed feed = new SyndFeedInput()
                    .build(new XmlReader(new URL(source.getUrl())));
                
                for (SyndEntry entry : feed.getEntries()) {
                    News news = new News();
                    news.setTitle(entry.getTitle());
                    news.setContent(entry.getDescription().getValue());
                    news.setUrl(entry.getLink());
                    news.setSource(source.getName());
                    news.setPublishTime(entry.getPublishedDate());
                    newsList.add(news);
                }
            } catch (Exception e) {
                log.error("RSS crawl error: {}", source.getName(), e);
            }
        }
        return newsList;
    }
}
```

### 文本分析 | Text Analysis

```python
# Python NLP 服务 - 文本分析
from flask import Flask, request, jsonify
import jieba
import jieba.analyse
from textrank4zh import TextRank4Keyword, TextRank4Sentence
from snownlp import SnowNLP

app = Flask(__name__)

@app.route('/analyze', methods=['POST'])
def analyze():
    """综合文本分析接口"""
    data = request.json
    text = data.get('text', '')
    
    # 1. 中文分词
    words = list(jieba.cut(text))
    
    # 2. 关键词提取 (TF-IDF)
    keywords_tfidf = jieba.analyse.extract_tags(text, topK=10, withWeight=True)
    
    # 3. 关键词提取 (TextRank)
    tr4w = TextRank4Keyword()
    tr4w.analyze(text=text, lower=True, window=2)
    keywords_textrank = [(item.word, item.weight) for item in tr4w.get_keywords(10, word_min_len=2)]
    
    # 4. 自动摘要 (TextRank)
    tr4s = TextRank4Sentence()
    tr4s.analyze(text=text, lower=True, source='all_filters')
    summary = ''.join([item.sentence for item in tr4s.get_key_sentences(num=3)])
    
    # 5. 情感分析 (SnowNLP)
    s = SnowNLP(text)
    sentiment_score = s.sentiments  # 0-1, 越接近1越正面
    sentiment = 'positive' if sentiment_score > 0.6 else ('negative' if sentiment_score < 0.4 else 'neutral')
    
    # 6. 文本分类 (基于关键词规则或模型)
    category = classify_news(text, keywords_tfidf)
    
    return jsonify({
        'words': words,
        'keywords_tfidf': [{'word': w, 'weight': wt} for w, wt in keywords_tfidf],
        'keywords_textrank': [{'word': w, 'weight': wt} for w, wt in keywords_textrank],
        'summary': summary,
        'sentiment_score': sentiment_score,
        'sentiment': sentiment,
        'category': category
    })

def classify_news(text, keywords):
    """基于关键词的新闻分类"""
    categories = {
        '政治': ['政府', '政策', '国家', '领导', '会议', '改革'],
        '经济': ['经济', '市场', '股市', '金融', '企业', '投资', 'GDP'],
        '科技': ['科技', '互联网', 'AI', '人工智能', '芯片', '5G', '创新'],
        '体育': ['体育', '足球', '篮球', '奥运', '比赛', '冠军'],
        '娱乐': ['娱乐', '明星', '电影', '音乐', '综艺', '演员'],
        '社会': ['社会', '民生', '教育', '医疗', '就业', '安全'],
        '国际': ['国际', '全球', '美国', '欧洲', '外交', '联合国']
    }
    
    scores = {}
    for cat, cat_keywords in categories.items():
        score = sum(1 for kw in keywords if kw[0] in cat_keywords)
        scores[cat] = score
    
    return max(scores, key=scores.get) if max(scores.values()) > 0 else '其他'
```

### 情感分析 | Sentiment Analysis

```python
# 情感分析模块
from snownlp import SnowNLP
import jieba
import numpy as np

class SentimentAnalyzer:
    def __init__(self):
        # 加载情感词典
        self.positive_words = self.load_words('data/positive_words.txt')
        self.negative_words = self.load_words('data/negative_words.txt')
        self.negation_words = ['不', '没', '无', '非', '未', '莫', '勿', '毋']
        self.degree_words = {
            '非常': 2.0, '十分': 2.0, '极其': 2.5, '相当': 1.5,
            '比较': 1.2, '稍微': 0.8, '有点': 0.8, '略微': 0.7
        }
    
    def analyze_dict(self, text):
        """基于词典的情感分析"""
        words = list(jieba.cut(text))
        score = 0
        for i, word in enumerate(words):
            if word in self.positive_words:
                weight = 1
                # 检查否定词
                if i > 0 and words[i-1] in self.negation_words:
                    weight = -1
                # 检查程度副词
                if i > 0 and words[i-1] in self.degree_words:
                    weight *= self.degree_words[words[i-1]]
                score += weight
            elif word in self.negative_words:
                weight = -1
                if i > 0 and words[i-1] in self.negation_words:
                    weight = 1
                if i > 0 and words[i-1] in self.degree_words:
                    weight *= self.degree_words[words[i-1]]
                score += weight
        
        # 归一化到 0-1
        normalized = 1 / (1 + np.exp(-score))
        sentiment = 'positive' if normalized > 0.6 else ('negative' if normalized < 0.4 else 'neutral')
        return normalized, sentiment
    
    def analyze_deep(self, text):
        """基于深度学习的情感分析 (BERT)"""
        # 使用 transformers 加载预训练模型
        from transformers import BertTokenizer, BertForSequenceClassification
        import torch
        
        tokenizer = BertTokenizer.from_pretrained('bert-base-chinese')
        model = BertForSequenceClassification.from_pretrained('bert-base-chinese', num_labels=3)
        
        inputs = tokenizer(text, return_tensors='pt', truncation=True, padding=True, max_length=512)
        outputs = model(**inputs)
        predictions = torch.nn.functional.softmax(outputs.logits, dim=1)
        
        labels = ['negative', 'neutral', 'positive']
        predicted_label = labels[torch.argmax(predictions).item()]
        confidence = predictions[0][torch.argmax(predictions)].item()
        
        return confidence, predicted_label
```

### 主题建模 (LDA) | Topic Modeling

```python
# LDA 主题建模
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.decomposition import LatentDirichletAllocation
import jieba

class TopicModeler:
    def __init__(self, n_topics=10, n_words=20):
        self.n_topics = n_topics
        self.n_words = n_words
        self.vectorizer = CountVectorizer(
            max_features=10000,
            stop_words=self.get_stop_words()
        )
        self.lda = LatentDirichletAllocation(
            n_components=n_topics,
            random_state=42,
            learning_method='online'
        )
    
    def preprocess(self, texts):
        """文本预处理: 分词 + 去停用词"""
        stop_words = self.get_stop_words()
        processed = []
        for text in texts:
            words = [w for w in jieba.cut(text) if w not in stop_words and len(w) > 1]
            processed.append(' '.join(words))
        return processed
    
    def fit_transform(self, texts):
        """训练 LDA 模型并返回主题分布"""
        processed = self.preprocess(texts)
        doc_term_matrix = self.vectorizer.fit_transform(processed)
        topic_distribution = self.lda.fit_transform(doc_term_matrix)
        return topic_distribution
    
    def get_topics(self):
        """获取每个主题的关键词"""
        feature_names = self.vectorizer.get_feature_names_out()
        topics = []
        for topic_idx, topic in enumerate(self.lda.components_):
            top_words = [feature_names[i] for i in topic.argsort()[:-self.n_words - 1:-1]]
            topics.append({
                'topic_id': topic_idx,
                'keywords': top_words,
                'label': self.label_topic(top_words)
            })
        return topics
    
    def label_topic(self, keywords):
        """根据关键词自动标注主题"""
        topic_labels = {
            '政治': ['政府', '政策', '国家', '领导'],
            '经济': ['经济', '市场', '企业', '投资'],
            '科技': ['科技', '互联网', 'AI', '人工智能'],
            '体育': ['体育', '足球', '篮球', '比赛'],
            '娱乐': ['娱乐', '明星', '电影', '音乐'],
            '社会': ['社会', '民生', '教育', '医疗'],
            '国际': ['国际', '全球', '美国', '欧洲']
        }
        
        for label, label_keywords in topic_labels.items():
            if any(kw in keywords[:5] for kw in label_keywords):
                return label
        return f'主题{len(topics)+1}'
    
    def get_stop_words(self):
        """获取中文停用词"""
        stop_words = set()
        with open('data/stop_words.txt', 'r', encoding='utf-8') as f:
            for line in f:
                stop_words.add(line.strip())
        return stop_words
```

### 可视化看板 | Visualization Dashboard

```vue
<!-- 数据看板页面 -->
<template>
  <div class="dashboard">
    <!-- 顶部统计卡片 -->
    <el-row :gutter="20">
      <el-col :span="6">
        <el-card class="stat-card">
          <div class="stat-icon news">📰</div>
          <div class="stat-info">
            <div class="stat-value">{{ stats.totalNews }}</div>
            <div class="stat-label">新闻总数</div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="stat-card">
          <div class="stat-icon positive">😊</div>
          <div class="stat-info">
            <div class="stat-value">{{ stats.positiveRate }}%</div>
            <div class="stat-label">正面新闻占比</div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="stat-card">
          <div class="stat-icon topic">🔥</div>
          <div class="stat-info">
            <div class="stat-value">{{ stats.hotTopics }}</div>
            <div class="stat-label">热点话题</div>
          </div>
        </el-card>
      </el-col>
      <el-col :span="6">
        <el-card class="stat-card">
          <div class="stat-icon source">📡</div>
          <div class="stat-info">
            <div class="stat-value">{{ stats.sources }}</div>
            <div class="stat-label">数据来源</div>
          </div>
        </el-card>
      </el-col>
    </el-row>
    
    <!-- 图表区域 -->
    <el-row :gutter="20" style="margin-top: 20px;">
      <!-- 新闻趋势 -->
      <el-col :span="12">
        <el-card title="新闻数量趋势">
          <LineChart :data="trendData" />
        </el-card>
      </el-col>
      
      <!-- 分类占比 -->
      <el-col :span="12">
        <el-card title="新闻分类占比">
          <PieChart :data="categoryData" />
        </el-card>
      </el-col>
    </el-row>
    
    <el-row :gutter="20" style="margin-top: 20px;">
      <!-- 情感分布 -->
      <el-col :span="8">
        <el-card title="情感分析分布">
          <BarChart :data="sentimentData" />
        </el-card>
      </el-col>
      
      <!-- 热点词云 -->
      <el-col :span="8">
        <el-card title="热点关键词">
          <WordCloud :data="wordCloudData" />
        </el-card>
      </el-col>
      
      <!-- 来源分布 -->
      <el-col :span="8">
        <el-card title="新闻来源分布">
          <PieChart :data="sourceData" />
        </el-card>
      </el-col>
    </el-row>
    
    <!-- 热点话题 -->
    <el-row style="margin-top: 20px;">
      <el-col :span="24">
        <el-card title="热点话题发现">
          <div class="topics">
            <el-tag 
              v-for="topic in topics" 
              :key="topic.topic_id"
              :type="topic.type"
              size="large"
              class="topic-tag"
              @click="selectTopic(topic)">
              #{{ topic.label }}
              <span style="margin-left: 8px; opacity: 0.7;">{{ topic.newsCount }}篇</span>
            </el-tag>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>
```

---

## 📊 数据看板示例 | Dashboard Example

```
┌─────────────────────────────────────────────────────────────────────┐
│  📰 新闻数据可视化看板                                              │
├─────────────┬─────────────┬─────────────┬─────────────────────────┤
│  📰 新闻总数  │  😊 正面占比  │  🔥 热点话题  │  📡 数据来源         │
│   125,680   │    62.3%    │     28      │      15               │
├─────────────┴─────────────┴─────────────┴─────────────────────────┤
│                                                                     │
│  📈 新闻数量趋势                    │  🥧 新闻分类占比              │
│  ████████████████████░░░░  上升   │  政治 25%  经济 20%          │
│  ██████████████████████░░         │  科技 18%  社会 15%          │
│  ████████████████████████         │  体育 10%  娱乐 7%  其他 5%  │
│                                     │                               │
├─────────────────────────────────────┴───────────────────────────────┤
│                                                                     │
│  😊 情感分布     │  ☁️ 热点词云        │  📡 来源分布               │
│  正面 ████████ 62% │  科技  政策  经济  │  新华网 25%             │
│  中性 ████ 25%    │  创新  市场  改革  │  人民网 20%             │
│  负面 ██ 13%      │  发展  企业  投资  │  央视 18%  其他 37%     │
│                     │                      │                           │
├─────────────────────────────────────────────────────────────────────┤
│  🔥 热点话题                                                       │
│  #科技创新(3280篇)  #经济政策(2850篇)  #社会民生(2340篇)          │
│  #国际局势(1980篇)  #体育赛事(1650篇)  #娱乐文化(1320篇)          │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 🎯 应用场景 | Use Cases

- 📰 **媒体机构**：新闻内容分析和热点追踪
- 📊 **舆情监控**：社会舆情监控和情感分析
- 🏛️ **政府决策**：政策影响力评估和民意分析
- 📈 **市场研究**：行业趋势和市场动态分析
- 🎓 **学术研究**：新闻传播学和文本挖掘研究
- 💼 **企业情报**：竞争对手动态和行业新闻监控
- 🔬 **NLP 教学**：自然语言处理和文本分析教学项目
- 💻 **全栈项目**：Java + Python + Vue 全栈开发教学

---

## 📚 参考文献 | References

- Blei, D. M., et al. "Latent Dirichlet Allocation." JMLR 2003.
- Devlin, J., et al. "BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding." NAACL 2019.
- Scrapy Documentation. scrapy.org 2023.
- ECharts Documentation. echarts.apache.org 2023.
- 刘知远. "大数据自然语言处理." 2018.

---

## 📄 License

MIT License — 自由使用、修改和分发。

---

> 💡 **Java Web + NLP + 可视化的新闻大数据系统，Star ⭐ 支持开源数据可视化！**
