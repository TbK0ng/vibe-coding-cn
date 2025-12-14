#!/bin/bash
#
# create-skill.sh - Production-grade Skill directory generator
#
# Usage: ./create-skill.sh <skill-name> [--minimal]
#
# Examples:
#   ./create-skill.sh postgresql
#   ./create-skill.sh my-api --minimal
#

set -e

SKILL_NAME=$1
MINIMAL=$2

if [ -z "$SKILL_NAME" ]; then
    echo "Usage: ./create-skill.sh <skill-name> [--minimal]"
    echo ""
    echo "Examples:"
    echo "  ./create-skill.sh postgresql"
    echo "  ./create-skill.sh my-api --minimal"
    exit 1
fi

# Validate skill name (lowercase, hyphens only)
if [[ ! "$SKILL_NAME" =~ ^[a-z][a-z0-9-]*$ ]]; then
    echo "Error: Skill name must be lowercase, start with letter, use hyphens"
    echo "Example: my-skill-name"
    exit 1
fi

echo "Creating skill: $SKILL_NAME"

# Create directory structure
mkdir -p "$SKILL_NAME"/{assets,scripts,references}

# Create references/index.md
cat > "$SKILL_NAME/references/index.md" << 'EOF'
# Documentation Index

## Categories

### Getting Started
- **getting_started.md** - Installation and setup

### API Reference
- **api.md** - Complete API documentation

### Examples
- **examples.md** - Code examples by use case

## Quick Links

- Installation → `getting_started.md`
- API Reference → `api.md`
- Examples → `examples.md`
EOF

if [ "$MINIMAL" == "--minimal" ]; then
    # Minimal template
    cat > "$SKILL_NAME/SKILL.md" << EOF
---
name: $SKILL_NAME
description: [Domain] assistance including [key capability]. Use when [trigger condition].
---

# ${SKILL_NAME^} Skill

[One-sentence overview]

## When to Use This Skill

This skill should be triggered when:
- [Trigger 1]
- [Trigger 2]
- [Trigger 3]

## Quick Reference

### Common Patterns

**Pattern 1:**
\`\`\`
[code]
\`\`\`

## Resources

### references/
Documentation files

### scripts/
Helper scripts
EOF
else
    # Full production template
    cat > "$SKILL_NAME/SKILL.md" << EOF
---
name: $SKILL_NAME
description: [Domain] development including [capability 1], [capability 2]. Use when working with [domain], implementing solutions, or troubleshooting issues.
---

# ${SKILL_NAME^} Skill

Comprehensive assistance with [domain] development.

## When to Use This Skill

This skill should be triggered when:
- Working with [domain/technology]
- Asking about [domain] features or APIs
- Implementing [domain] solutions
- Debugging [domain] code
- Learning [domain] best practices

## Quick Reference

### Common Patterns

**Pattern 1:** [Name]
\`\`\`
[code example]
\`\`\`

**Pattern 2:** [Name]
\`\`\`
[code example]
\`\`\`

### Example Code Patterns

**Example 1:**
\`\`\`
[complete working code]
\`\`\`

## Reference Files

This skill includes documentation in \`references/\`:

- **index.md** - Documentation navigation
- **getting_started.md** - Setup and basics
- **api.md** - API reference
- **examples.md** - Code examples

## Working with This Skill

### For Beginners
Start with getting_started reference file.

### For Specific Features
Use api reference for detailed information.

### For Code Examples
See examples reference file.

## Resources

### references/
Organized documentation from official sources.

### scripts/
Helper scripts for automation.

### assets/
Templates and configurations.

## Notes

- Generated from official documentation
- Code examples are complete and working
EOF
fi

echo ""
echo "✅ Created skill: $SKILL_NAME/"
echo ""
echo "   $SKILL_NAME/"
echo "   ├── SKILL.md"
echo "   ├── assets/"
echo "   ├── scripts/"
echo "   └── references/"
echo "       └── index.md"
echo ""
echo "Next steps:"
echo "  1. Edit $SKILL_NAME/SKILL.md"
echo "  2. Add documentation to references/"
echo "  3. Add helper scripts to scripts/"
echo "  4. Add templates to assets/"
