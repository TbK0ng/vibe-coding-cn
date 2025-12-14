# Claude Skills Documentation Index

## Overview

This index provides navigation for the Claude Skills meta-skill documentation.

## Categories

### Official Documentation
**File:** `README.md`

Complete overview of Claude Skills including:
- What are skills and how they work
- Example skills by category
- Document skills (source-available)
- Usage across platforms (Claude Code, Claude.ai, API)
- Creating basic skills

## Quick Links

| Topic | File | Section |
|-------|------|---------|
| What are skills | `README.md` | Lines 1-9 |
| Example skills list | `README.md` | Lines 24-45 |
| Document skills | `README.md` | Lines 47-56 |
| Claude Code setup | `README.md` | Lines 58-78 |
| Claude.ai usage | `README.md` | Lines 80-84 |
| Claude API | `README.md` | Lines 86-88 |
| Creating a skill | `README.md` | Lines 90-117 |

## Skill Structure Reference

### Required Files

```
skill-name/
└── SKILL.md           # Main instructions with YAML frontmatter
```

### Optional Directories

```
skill-name/
├── SKILL.md
├── references/        # Documentation files
├── scripts/           # Helper scripts
└── assets/            # Templates, configs
```

### YAML Frontmatter

```yaml
---
name: skill-name          # lowercase, hyphens
description: What + When  # Purpose and trigger conditions
---
```

## Topics Covered

### Getting Started
- What skills are
- How skills work
- Platform availability
- Installation methods

### Skill Categories

| Category | Examples |
|----------|----------|
| Creative | algorithmic-art, canvas-design, slack-gif-creator |
| Development | artifacts-builder, mcp-server, webapp-testing |
| Enterprise | brand-guidelines, internal-comms, theme-factory |
| Documents | docx, pdf, pptx, xlsx |
| Meta | skill-creator, template-skill |

### Platform Integration

| Platform | Method |
|----------|--------|
| Claude Code | `/plugin marketplace add anthropics/skills` |
| Claude.ai | Upload via skills interface |
| Claude API | Skills API endpoint |

## External Resources

### Official Links
- [What are skills?](https://support.claude.com/en/articles/12512176-what-are-skills)
- [Using skills in Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude)
- [Creating custom skills](https://support.claude.com/en/articles/12512198-creating-custom-skills)
- [Skills API Quickstart](https://docs.claude.com/en/api/skills-guide)
- [Anthropic Skills GitHub](https://github.com/anthropics/skills)

### Blog Posts
- [Equipping agents with Agent Skills](https://anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills)

## License

- Example skills: Apache 2.0 (open source)
- Document skills: Source-available (reference only)
