# Contributing to Clew Forge

**We want your help.** Clew Forge is built by the community, for the community.

Whether you're fixing a typo, adding a feature, or building an entire integration, your contribution matters. This guide shows you how.

---

## Why Contribute?

- **Help makers** - Your work helps developers ship faster
- **Build in public** - Showcase your skills and thinking
- **Learn** - Understand how successful projects are organized
- **Solve problems** - Work on issues you care about
- **Join a community** - Meet other builders

---

## Code of Conduct

We're committed to providing a welcoming and inclusive environment. See [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) for our community guidelines.

**TL;DR:** Be respectful. Be helpful. Assume good intent.

---

## Getting Started

### 1. Fork the Repository

```bash
# Go to GitHub and click "Fork"
# Then clone your fork
git clone https://github.com/YOUR_USERNAME/clew-forge.git
cd clew-forge
```

### 2. Create a Branch

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

**Branch naming:**
- `feature/` for new features
- `fix/` for bug fixes
- `docs/` for documentation
- `test/` for tests

### 3. Make Your Changes

Edit files, add features, fix bugs, improve docs.

### 4. Test Your Changes

```bash
# Run existing tests
npm test
# or
python -m pytest

# Test your specific changes
npm test -- --grep "your change"
```

### 5. Commit with Clear Messages

```bash
git add .
git commit -m "Brief description of changes

Longer explanation if needed.
- Bullet point 1
- Bullet point 2"
```

**Good commit messages:**
- First line: short, imperative (< 50 chars)
- Blank line
- Detailed explanation if needed
- Reference issues: "Fixes #123"

### 6. Push and Create a Pull Request

```bash
git push origin feature/your-feature-name
```

Then go to GitHub and create a PR. In the PR description:
- Describe what you changed and why
- Reference any related issues
- Show before/after if applicable

### 7. Code Review & Merge

- Maintainers will review your PR
- They may ask for changes
- Once approved, your code gets merged!
- You're now a contributor 🎉

---

## Contribution Levels

### 🟢 Easy Contributions (Great for First-Timers)

These help improve Clew Forge and don't require deep technical knowledge.

**Examples:**
- [ ] Fix typos or grammar in docs
- [ ] Add missing examples
- [ ] Improve README clarity
- [ ] Translate docs to another language
- [ ] Add more FAQ entries
- [ ] Create a new example project
- [ ] Fix broken links
- [ ] Update outdated information

**How to start:**
1. Find an issue labeled "good first issue"
2. Comment: "I'd like to help with this"
3. Fork, make changes, submit PR

**Time:** 15-60 minutes

---

### 🟡 Medium Contributions (For Experienced Developers)

These add features or improve existing functionality.

**Examples:**
- [ ] Add new LLM integration (Claude API, Bedrock, etc)
- [ ] Create new automation script
- [ ] Build new example project
- [ ] Improve test coverage
- [ ] Add new documentation section
- [ ] Create VS Code extension
- [ ] Add GitHub template integration
- [ ] Optimize existing scripts

**How to start:**
1. Pick a feature you want to add
2. Create an issue describing it
3. Wait for feedback
4. Fork, build, submit PR

**Time:** 2-8 hours

---

### 🔴 Hard Contributions (For Advanced Developers)

These are large features or architectural improvements.

**Examples:**
- [ ] Build CLI tool (`clew-forge init my-project`)
- [ ] Create web dashboard for tracking
- [ ] Build GitHub bot integration
- [ ] Implement real-time collaboration
- [ ] Create VS Code extension
- [ ] Build community project registry
- [ ] Implement project templating system
- [ ] Add advanced automation features

**How to start:**
1. Create a detailed issue or discussion
2. Share your design/approach
3. Get maintainer buy-in
4. Fork, build, submit PR with tests

**Time:** 1-2 weeks

---

## Common Contributions

### Adding Documentation

**Files to update:**
- `README.md` - Main documentation
- `GETTING_STARTED.md` - Quick start guide
- `docs/` - Detailed documentation
- Example project READMEs

**How:**
1. Fork the repo
2. Edit markdown files
3. Test locally: `cat file.md | less`
4. Commit and PR

### Creating an Example Project

**Steps:**
1. Create folder: `examples/your-project-name/`
2. Copy template structure:
   ```
   examples/your-project-name/
   ├── README.md (walkthrough)
   ├── REQUIREMENTS.md (filled out)
   ├── PRD.md (complete)
   ├── MVP_SCOPE.md (v1 scope)
   ├── tasks/todo.md
   ├── docs/activity.md
   ├── PROMPT_FOR_CLAUDE.md
   ├── PROMPT_FOR_CHATGPT.md
   └── code/ (your implementation)
   ```
3. Fill out each file completely
4. Add real example code
5. Write clear walkthrough in README

### Adding Automation Scripts

**Pattern:**
1. Create script in `scripts/your-script.sh` or `scripts/your-script.py`
2. Add error handling and clear output
3. Document in `docs/AUTOMATION_GUIDE.md`
4. Add tests in `tests/test-your-script.sh`
5. Include usage examples

**Requirements:**
- ✅ Works on Mac/Linux/Windows WSL
- ✅ Has proper error handling
- ✅ Is documented
- ✅ Is tested

### Fixing Bugs

**Steps:**
1. Create issue describing bug (if one doesn't exist)
2. Fork repo
3. Create `fix/bug-name` branch
4. Add failing test (if applicable)
5. Fix the bug
6. Verify test passes
7. Commit and PR

---

## Development Workflow

### Setup Development Environment

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/clew-forge.git
cd clew-forge

# Install dependencies (if applicable)
npm install
# or
pip install -r requirements.txt

# Create a branch
git checkout -b feature/your-feature
```

### Making Changes

```bash
# Edit files
vim docs/your-file.md

# Test changes locally
cat docs/your-file.md  # Verify format

# If code changes
npm test
python -m pytest
```

### Running Quality Checks

```bash
# Lint markdown
npm run lint:markdown

# Check for common issues
npm run lint

# Run full test suite
npm test

# Check formatting
npm run format:check
```

### Committing

```bash
# Review changes
git diff

# Stage changes
git add .

# Commit with message
git commit -m "Feature: Add new LLM integration

- Added support for Claude API
- Updated LLM_INTEGRATION.md
- Added examples for new LLM
- All tests passing"

# Push to your fork
git push origin feature/your-feature
```

---

## Pull Request Process

### Before You Submit

1. **Check existing PRs** - Don't duplicate work
2. **Update main** - Rebase on latest main
3. **Run tests** - All tests pass
4. **Check formatting** - Code is consistent
5. **Test locally** - Changes work as intended

### Writing a Good PR Description

```markdown
## Description
Brief description of changes

## Motivation
Why is this change needed?

## Changes Made
- Bullet point 1
- Bullet point 2

## Testing
How did you test this?

## Checklist
- [x] Tests pass
- [x] Documentation updated
- [x] No breaking changes
- [x] Follows code style
```

### What Happens Next

1. **Automated checks run** - Tests, linting, etc
2. **Maintainers review** - Usually within 48 hours
3. **Feedback (maybe)** - Changes requested
4. **You update** - Address feedback
5. **Merge** - Your code goes live!

---

## Coding Standards

### Markdown
- 80-char line limit for readability
- Clear headers and sections
- Code examples for complex topics
- Links to related docs

### Python
- PEP 8 style guide
- Docstrings for functions
- Type hints where applicable
- Tests for new functions

### Bash
- Proper error handling
- Clear variable names
- Comments for complex logic
- Cross-platform compatible

### Documentation
- Beginner-friendly language
- Explain "why" not just "what"
- Real examples
- Links to references

---

## Getting Help

### Questions?
- Create a GitHub Discussion
- Ask in the issue
- Email maintainers

### Stuck?
- Check existing issues
- Read documentation
- Ask in PR comments
- Create a new issue

### Want to Discuss First?
- Create an issue with "discussion" label
- Share your idea
- Get feedback before coding

---

## Recognition

### Contributors Get

- ✅ Your name in CHANGELOG.md
- ✅ Your GitHub profile linked in README
- ✅ Recognition in releases
- ✅ Feel good about helping the community

### Your Profile

After your first PR, you'll be added to:
- CONTRIBUTORS.md
- GitHub contributors graph
- Release notes (if applicable)

---

## Questions?

- **How do I get started?** Pick an easy issue and create a PR
- **Can I suggest features?** Yes! Create an issue first
- **Do I need permission?** No! Just fork and PR
- **Will my PR be accepted?** If it helps and follows guidelines, probably!
- **How long does review take?** Usually 24-48 hours

---

## Roadmap

Areas where we're actively looking for help:

- [ ] CLI tool: `clew-forge init my-project`
- [ ] VS Code extension
- [ ] GitHub template integration
- [ ] Web dashboard
- [ ] More example projects
- [ ] Additional LLM integrations
- [ ] Documentation translations
- [ ] Community project registry

Interested in one of these? Let us know!

---

## Thank You

Every contribution, no matter how small, helps Clew Forge improve. Thank you for being part of this community.

Let's build something great together. 🚀

---

## Resources

- [Code of Conduct](./CODE_OF_CONDUCT.md)
- [Issues](https://github.com/yourusername/clew-forge/issues)
- [Pull Requests](https://github.com/yourusername/clew-forge/pulls)
- [Discussions](https://github.com/yourusername/clew-forge/discussions)
- [GitHub Help](https://docs.github.com/en)

---

**Ready to contribute?** Pick an issue and start! We're excited to work with you. 💪
