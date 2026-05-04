# dbskill 商业诊断知识库

> 周正 商业诊断工具箱 - 多格式兼容版本
> 
> 📚 从 12,307 条推文中提炼的商业智慧
> 
> ⭐ 4,000+ Stars | 🔧 16 个诊断工具 | 📋 4,176 个知识原子

---

## 🎯 这是什么？

这是一个**多格式兼容的商业诊断知识库**，将 dontbesilent 的商业智慧整理成：

- **Claude Code / WorkBuddy Skills** - 直接复制到 `~/.claude/skills/` 或 `~/.workbuddy/skills/`
- **JSON 知识库** - 便于 AI 处理和调用
- **Markdown 文档** - 便于阅读和学习
- **CSV 表格** - 便于数据分析
- **提示词模板** - 快速开始使用

---

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

### 方式一：Claude Code / WorkBuddy 用户

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

---

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

- 🌐 原始仓库: https://github.com/dontbesilent2025/dbskill
- 📱 Twitter/X: @dontbesilent2025
- 📕 小红书: dontbesilent
- 🎵 抖音: dontbesilent

---

## 📄 许可证

本知识库基于 CC BY-NC 4.0 许可证

---

*🤖 本知识库由 AI 自动整理和维护*
*支持 Claude Code, WorkBuddy, OpenAI, Anthropic 等多种 AI 平台*
