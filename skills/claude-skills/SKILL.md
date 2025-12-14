---
name: claude-skills
description: Meta-skill for creating, optimizing, and managing Claude Skills. Use when building new skills from documentation, converting domain expertise into AI capabilities, structuring skill files, or learning skill development best practices. This is the foundational skill that generates other skills.
---

# Claude Skills Meta-Skill

The definitive guide to creating production-grade Claude Skills. This meta-skill teaches Claude how to transform any domain knowledge into structured, reusable AI capabilities.

## When to Use This Skill

This skill should be triggered when:
- Creating a new Claude Skill from scratch
- Converting documentation, APIs, or domain knowledge into a Skill
- Optimizing or restructuring existing Skills
- Learning Skill architecture patterns and best practices
- Debugging or troubleshooting Skill behavior
- Understanding YAML frontmatter and Skill metadata
- Building multi-file Skills with references, scripts, and assets

## Quick Reference

### Skill Directory Structure

```
skill-name/
├── SKILL.md              # Required: Main instructions with YAML frontmatter
├── references/           # Optional: Detailed documentation files
│   ├── index.md          # Navigation index for references
│   ├── api.md            # API documentation
│   └── examples.md       # Code examples
├── scripts/              # Optional: Helper scripts and automation
│   └── setup.sh          # Setup/installation scripts
└── assets/               # Optional: Templates, configs, media
    └── templates/        # Boilerplate files
```

### YAML Frontmatter Specification

```yaml
---
name: skill-name                    # Required: lowercase, hyphens, unique
description: Complete description   # Required: What it does + when to trigger
---
```

### Production SKILL.md Template

```markdown
---
name: my-skill
description: [Purpose] + [Trigger conditions]. Use when [specific scenarios].
---

# [Skill Name] Skill

[One-paragraph overview]

## When to Use This Skill

This skill should be triggered when:
- [Trigger 1]
- [Trigger 2]
- [Trigger 3]

## Quick Reference

### Common Patterns

**Pattern 1:** [Name]
```[language]
[code]
```

### Example Code Patterns

**Example 1** ([language]):
```[language]
[complete working example]
```

## Reference Files

This skill includes documentation in `references/`:
- **[file.md]** - [Description]

## Working with This Skill

### For Beginners
[Getting started guidance]

### For Specific Features
[How to find detailed information]

## Resources

### references/
[Description]

### scripts/
[Description]

### assets/
[Description]
```

---

## Core Concepts

### What is a Skill?

**A Skill is a folder containing instructions, scripts, and resources that Claude loads dynamically to improve performance on specialized tasks.**

Skills teach Claude to:
- Apply domain-specific knowledge consistently
- Follow organization-specific workflows
- Work with specific APIs, file formats, or tools
- Automate complex multi-step processes

### Skill Activation Triggers

Skills activate based on:
- **Explicit mention**: "Use the [skill-name] skill to..."
- **Description matching**: Task matches skill's description keywords
- **Context relevance**: Task domain aligns with skill's purpose

---

## Creating Production-Grade Skills

### Step 1: Define Scope

Answer before writing:
1. What specific problem does this skill solve?
2. What triggers should activate this skill?
3. What are the boundaries (what it should NOT do)?

### Step 2: Gather Source Material

Collect:
- Official documentation
- API references
- Code examples and patterns
- Common errors and solutions

### Step 3: Structure the SKILL.md

**Critical sections:**
1. YAML frontmatter with comprehensive description
2. "When to Use This Skill" with specific triggers
3. "Quick Reference" with common patterns
4. Code examples that are complete and working
5. Reference file pointers

### Step 4: Create Reference Files

**references/index.md:**
```markdown
# [Skill Name] Documentation Index

## Quick Links
- Getting Started → `getting_started.md`
- API Reference → `api.md`
- Examples → `examples.md`
```

### Step 5: Add Scripts and Assets

```bash
# scripts/setup.sh
#!/bin/bash
echo "Setting up [skill-name]..."
```

---

## Best Practices

### Description Writing

```yaml
# ❌ Too vague
description: Helps with databases

# ✅ Comprehensive
description: PostgreSQL database development including SQL queries, schema design, performance optimization. Use when working with PostgreSQL, writing SQL, or managing databases.
```

### Trigger Conditions

```markdown
# ❌ Vague
- Working with code

# ✅ Specific
- Writing PostgreSQL queries or stored procedures
- Designing database schemas or indexes
- Optimizing slow queries
```

### Code Examples

```markdown
# ❌ Incomplete
```sql
SELECT * FROM users
```

# ✅ Complete with context
**Example: Paginated query with filtering**
```sql
SELECT id, username, email, created_at
FROM users
WHERE status = 'active'
ORDER BY created_at DESC
LIMIT 20 OFFSET 0;
```
```

---

## Skill Patterns by Category

### API/Library Skills

```markdown
## Quick Reference

### Authentication
```python
client = APIClient(api_key="your-key")
```

### Common Operations
```python
# Create
resource = client.create(name="example")

# List
resources = client.list(limit=10)

# Delete
client.delete(resource_id)
```

### Error Handling
```python
try:
    result = client.operation()
except APIError as e:
    print(f"Error {e.code}: {e.message}")
```
```

### Framework Skills

```markdown
## Project Structure
```
my-project/
├── src/
├── tests/
└── config/
```

## Common Commands
```bash
framework init my-project
framework dev
framework build
```
```

### Domain Knowledge Skills

```markdown
## Core Concepts

### Concept 1
[Explanation]

### Concept 2
[Explanation]

## Decision Framework

When to use Approach A:
- [Condition 1]
- [Condition 2]

When to use Approach B:
- [Condition 1]
- [Condition 2]
```

---

## Generating Skills from Source Material

### Transformation Process

```
Source Material
      ↓
Extract: concepts, patterns, examples, edge cases, errors
      ↓
Structure: YAML → When to Use → Quick Reference → Details
      ↓
Create: references/index.md + categorized docs
      ↓
Production-Grade Skill
```

### Generation Prompt

When creating a skill from source material:

```
Create a production-grade Claude Skill:

1. Analyze source material
2. Extract core concepts and patterns
3. Create SKILL.md with:
   - Comprehensive description (purpose + triggers)
   - Specific "When to Use" conditions
   - Quick Reference with code patterns
   - Complete working examples
4. Create references/index.md
5. Organize detailed docs in references/
```

---

## Platform Integration

### Claude Code

```bash
# Add marketplace
/plugin marketplace add anthropics/skills

# Install
/plugin install example-skills@anthropic-agent-skills

# Use
"Use the PDF skill to extract tables from report.pdf"
```

### Claude.ai

1. Navigate to Claude.ai (paid plan)
2. Upload custom skill folder
3. Reference in conversations

### Claude API

See: https://docs.claude.com/en/api/skills-guide

---

## Troubleshooting

### Skill Not Activating

1. Check `description` includes trigger keywords
2. Verify `name` is lowercase with hyphens
3. Ensure valid YAML (no tabs)
4. Try explicit: "Use the [skill-name] skill to..."

### Inconsistent Behavior

1. Add more specific trigger conditions
2. Include more code examples
3. Make instructions unambiguous
4. Add explicit constraints

---

## Reference Files

This skill includes documentation in `references/`:

- **README.md** - Official Anthropic Skills repository documentation
- **index.md** - Documentation index and quick links

## Working with This Skill

### For Creating New Skills
Follow the 5-step process in "Creating Production-Grade Skills"

### For Optimizing Existing Skills
Review "Best Practices" and compare against your skill

### For Understanding Architecture
Read "Core Concepts" for foundational understanding

## Resources

### references/
- Official Anthropic documentation
- Navigation index

### scripts/
- `create-skill.sh` - Quick skill directory generator

### assets/
- `template-minimal.md` - Minimal template
- `template-complete.md` - Full production template

## Notes

- Skills are portable across Claude Code, Claude.ai, and API
- The `description` field is critical for reliable activation
- Code examples should be complete and immediately usable
- This skill generates other production-grade skills
