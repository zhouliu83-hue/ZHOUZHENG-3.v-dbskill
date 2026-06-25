# dbskill 商业诊断知识库

> 周正 商业诊断工具箱 
> 
# dbskill

ZHOUZHENG 商业诊断工具箱。从 12,307 条推文中提炼方法论，做成 12个 Agent skill。

可在 Claude Code、Codex、Cursor、Trae Solo 等任意支持 skill / system prompt 的 Agent 上使用。

**最新更新：v2.14.2**

**v2.14.2 更新**：优化 `/dbs-chatroom` 的推荐人物规则。推荐专家时不再靠固定名单或泛名人直觉，改为先判断话题缺什么视角，再选择真正能推进讨论的人；同时明确排除泛财经、泛商业、靠表达和传播出名但判断密度偏弱的人。

**v2.14.1 更新**：修复 `/dbs-content-system` 发布包缺少 `scaffold/root/AGENTS.md`、`CLAUDE.md`、`SOURCE_OF_TRUTH.md` 的问题。`v2.14.0` 新增了正式版内容结构化系统，本版本补齐初始化脚本依赖的根级脚手架文件。

近期几次更新集中在 5 个方向：
- 内容工程：新增内容结构化系统，支持把大量本地素材搭成可继续生长的内容资产工程
- Agent 工作台迁移：支持 Grok Build，统一三端迁移语境
- 决策系统：从业务决策记录扩展成通用个人决策系统
- 学习与提问：新增 `dbs-learning`、`dbs-good-question`
- 状态管理：补齐 `dbs-save`、`dbs-restore`、`dbs-report`


**作者**：[周正的朋友圈](https://v.douyin.com/J9IcJec9v4o/) · [抖音][(https://v.douyin.com/pRUDhpBqOrc/](https://v.douyin.com/c3hrxkvUd_U/))

**所有内容开放，可以整套装，也可以只拿一部分。知识包、原子库、单个公理，都能单独用。**

---

## 如何安装 dbskill

![Uploading image.png…]()


#### Claude Code

``bashclaude plugin marketplace add ZHOUZHENG-3.v-dbskill

claude plugin install ZHOUZHENG-3.v-dbskill

#### 通用安装方式（适用于 Codex / Claude Code）

bashnpx -y skills add ZHOUZHENG-3.v-dbskill -g --all

## 如何更新 dbskill

#### Claude Code 插件市场安装的用户

```bashclaude plugin marketplace update ZHOUZHENG-3.v-dbskill

claude plugin update dbs@ZHOUZHENG-3.v-dbskill/reload-plugins
```

#### 通过 `npx skills add` 安装的用户

重新运行一次同样的命令即可。安装和更新用的是同一条命令，不需要换成别的写法。

```bashnpx -y skills add ZHOUZHENG-3.v-dbskill-g --all

## 工具箱

### dbs 诊断工具

| Skill | 做什么 |
|---|---|
| `/dbs` | 主入口，自动路由到对的工具 |
| `/dbs-diagnosis` | 商业模式诊断。消解问题，不回答问题 |
| `/dbs-benchmark` | 对标分析。五重过滤，排除噪音 |
| `/dbs-content` | 内容创作诊断。五维检测 |
| `/dbs-content-system` | 内容结构化系统。把本地大量内容资产搭成一个可持续生长的内容工程 |
| `/dbs-hook` | 短视频开头优化。诊断 + 生成方案 |
| `/dbs-xhs-title` | 小红书标题公式。75 个爆款公式匹配 |
| `/dbs-ai-check` | AI 写作特征识别。22 条特征扫描，只诊断不改 |
| `/dbs-slowisfast` | 慢就是快。摩擦建造资产，找到值得慢做的环节 |
| `/dbs-action` | 执行力诊断。阿德勒框架（原 dbs-unblock） |
| `/dbs-deconstruct` | 概念拆解。维特根斯坦式审查 |
| `/dbs-goal` | 目标清晰化。把模糊目标审计成可检查的交付物 |
| `/dbs-good-question` 或 `/好问题` | 好问题生成器。把模糊问题改成 Agent 可推理、可批评、可验证的问题说明书 |
| `/dbs-decision` 或 `/决策系统` | 个人决策系统。把任何长期跟踪的领域做成本地知识工程，四层结构 + 来源标签 + 隐私模式 |

### 学习工具

| Skill | 做什么 |
|---|---|
| `/dbs-learning` 或 `/dbs-learn` | 交互式学习。把课题拆成连续文章，根据上一篇反馈生成下一篇 |

## 📂 目录结构

```
dbskill-knowledge-base/
├── skills/                      # Claude Code / WorkBuddy Skills 原始文件
├── 知识库/                       # 原始知识库文件
├── multi-format-export/         # 多格式导出
│   ├── claude-code-skills/     # Claude Code 格式 Skills
│   ├── markdown-knowledge/      # Markdown 知识库
│   ├── json-knowledge/          # JSON 知识库（便于 AI 处理）
│   ├── csv-tables/             # CSV 表格
│   ├── prompt-templates/        # 提示词模板
│   └── docs/                   # 文档索引
├── sync-to-github.sh           # Linux/Mac GitHub 同步脚本
├── sync-to-github.bat          # Windows GitHub 同步脚本
└── README.md                   # 本文件
```

---

## 🚀 快速开始

### 方式一：Claude Code / WorkBuddy / Codex 用户

```bash
# 复制 skills 到对应目录
cp -r multi-format-export/claude-code-skills/* ~/.workbuddy/skills/

# 重启 Claude Code / WorkBuddy
```

然后直接说：
```
帮我看看我的商业模式
```

### 方式二：其他 AI 平台

读取 `multi-format-export/json-knowledge/index.json` 获取技能列表，
读取 `multi-format-export/json-knowledge/{skill-name}.json` 获取单个技能详情。

### 方式三：学习研究

直接阅读 `multi-format-export/markdown-knowledge/INDEX.md`

---

## 🛠️ 工具集

### GitHub 同步

```bash
# Linux/Mac
bash sync-to-github.sh

# Windows
sync-to-github.bat

# 或手动
git add .
git commit -m "Update"
git push origin main
```

### 重新构建知识库

```bash
# 需要 Python 3.7+
python build-knowledge-base.py
```

---

## 📊 包含的 Skills

| 技能 | 功能 | 触发关键词 |
|------|------|-----------|
| **dbs** | 🎯 主入口，自动路由 | `/dbs`, `/商业`, `帮我看看` |
| dbs-diagnosis | 商业模式诊断 | `/问诊`, `诊断一下` |
| dbs-benchmark | 对标分析 | `/对标`, `我该学谁` |
| dbs-content | 内容创作诊断 | `/内容诊断` |
| dbs-hook | 短视频开头优化 | `/hook`, `开头怎么写` |
| dbs-xhs-title | 小红书标题公式 | `/小红书标题` |
| dbs-ai-check | AI写作特征检测 | `/AI检测` |
| dbs-action | 执行力诊断 | `/action`, `我总是拖延` |
| dbs-deconstruct | 概念拆解 | `/拆概念` |
| dbs-slowisfast | 慢就是快方法论 | `/慢就是快` |
| dbs-save | 保存诊断状态 | `/存档` |
| dbs-restore | 恢复诊断状态 | `/续上` |
| dbs-report | 生成诊断报告 | `/出报告` |
| dbs-chatroom | 多专家聊天室 | `/定向聊天室` |
| dbs-chatroom-austrian | 奥派经济聊天室 | `/奥派` |
| dbs-agent-migration | Agent工作台迁移 | `/agent迁移` |

---

## 📖 核心框架

### 商业模式诊断公理

1. **商业模式是独立于人的客观存在**
2. **商业模式决定人的道德**
3. **智力不直接变现，商业模式才变现**
4. **流量不等于收入**
5. **定价即产品**
6. **99% 的创业问题是心理问题**

### 典型工作流

```
diagnosis（方向对不对）
    ↓
benchmark（找谁模仿）
    ↓
content（内容怎么做）
```

## 🔄 更新日志

### v2.7.0 (2024-12-20)
- ✨ 新增状态管理三件套（save/restore/report）
- ✨ 添加 agent_created 字段支持 WorkBuddy
- ✨ 提供多格式导出支持

### 早期版本
- 从 12,307 条推文中提炼方法论
- 开发 16 个诊断工具
- 构建 4,176 个知识原子库

---

## 📚 资源链接

- 🎵 抖音: 周正朋友圈
---
## 📄 许可证

本知识库基于 CC BY-NC 4.0 许可证

---

*🤖 本知识库由 AI 自动整理和维护*
*支持 Claude Code, WorkBuddy, OpenAI, Anthropic 等多种 AI 平台*
