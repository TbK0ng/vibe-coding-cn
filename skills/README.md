# 🤖 AI 技能库 (Skills Library)

`skills/` 目录是本项目中 AI 技能的模块化集合。每个子目录代表一个独立的技能模块，旨在为 AI 提供特定的工具、领域知识和操作能力。这些技能使得 AI 能够执行更复杂、更专业的任务。

## 目录结构

```
skills/
├───ccxt/                    # CCXT 加密货币交易库技能
├───claude-code-guide/       # Claude Code 使用指南技能
├───claude-cookbooks/        # Claude Cookbooks 技能
├───claude-skills/           # Claude 核心技能
├───coingecko/               # CoinGecko 数据查询技能
├───cryptofeed/              # CryptoFeed 实时数据处理技能
├───hummingbot/              # Hummingbot 量化交易机器人技能
├───polymarket/              # Polymarket 预测市场技能
├───postgresql/              # PostgreSQL 数据库操作技能
├───proxychains/             # ProxyChains 代理工具技能
├───snapdom/                 # SnapDOM 网页自动化技能
├───telegram-dev/            # Telegram Bot 开发技能
├───timescaledb/             # TimescaleDB 时序数据库技能
└───twscrape/                # Twscrape 数据抓取技能
```

## 各技能模块说明

每个技能模块通常包含以下内容：

*   **`SKILL.md`**: 该技能的详细描述、功能、使用场景和限制。
*   **`assets/`**: 与该技能相关的图像、图表或其他非代码资产。
*   **`references/`**: 相关文档、API 文档链接、教程或其他参考资料。
*   **`scripts/`**: 实现该技能的具体脚本或代码示例。

## 如何使用技能

AI Agent 在执行任务时，会根据任务需求调用相应的技能模块。开发者可以通过阅读每个技能模块内的 `SKILL.md` 文件，了解其具体功能和如何集成到 AI 的工作流程中。

## 扩展与贡献

本项目鼓励为 AI 技能库贡献新的技能模块。如果你有新的工具或领域知识希望集成到 AI 的能力中，可以创建一个新的子目录，并按照上述结构填充 `SKILL.md`、`assets/`、`references/` 和 `scripts/`。这有助于持续增强 AI 的能力和应用范围。
