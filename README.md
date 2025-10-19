# Clew Forge

**Where your reasoning threads become real artifacts.**

Turn structured thinking into shipped projects. Clew Forge is a project framework for builders who want to move fast without losing clarity—perfect for hackathons, indie sprints, and teams shipping real things.

---

## Why Clew Forge?

### The Problem
You have an idea. You know what to build. But then you hit the fog: *What should I document? How do I keep my thinking straight? Where do I track decisions? How do I explain this to my team (or judges)?*

Most frameworks make you choose: Ship fast or stay organized. Clew Forge says: **Why not both?**

### The Solution
Clew Forge gives you a structured path from idea → shipped product. It's opinionated enough to guide you, flexible enough to adapt. And it's built for the way real builders actually work.

**Three simple files to start:**
1. `REQUIREMENTS.md` - What are you building?
2. `tasks/todo.md` - What are the steps?
3. `docs/activity.md` - What did you do today?

That's enough structure to ship something real.

---

## What You Get

### 🧵 Clear Thinking
- **REQUIREMENTS.md** - Define your problem, users, and success criteria
- **PRD.md** - Product roadmap (optional, but helps)
- **MVP_SCOPE.md** - First version boundaries
- Activity logs that show your thinking process

### 🏗️ Organized Building
- Tasks organized by phase
- Decisions tracked and documented
- Architecture decisions recorded
- Code quality checks built-in

### 🚀 Ready to Ship
- LLM integration (Claude, ChatGPT, Copilot, Vertex)
- Activity logs judges and investors love
- Pre-commit hooks catch problems early
- GitHub Actions validate everything

### 🤝 Community Ready
- Contributing guidelines included
- Code of conduct established
- Open to contributions (easy, medium, hard paths)
- Future roadmap shared transparently

---

## Quick Start (5 Minutes)

### 1. Clone Clew Forge
```bash
git clone https://github.com/yourusername/clew-forge my-project
cd my-project
```

### 2. Read GETTING_STARTED.md
```bash
cat GETTING_STARTED.md
```

### 3. Fill Out Three Files
```bash
# Define what you're building
vim docs/00_BOOTSTRAP/REQUIREMENTS.md

# List your tasks
vim tasks/todo.md

# Start logging progress
vim docs/02_EXECUTION/activity.md
```

### 4. Start Building
```bash
# Connect your LLM (Claude, ChatGPT, etc)
cat LLM_INTEGRATION.md

# Use your LLM for the heavy lifting
# Update your activity log as you go
./scripts/log.sh "Feature X completed"

# Push when ready
git add .
git commit -m "Feature: X"
git push
```

**That's it.** You're now shipping with structure. 🚀

---

## 🤖 Pro Tip: Use Your LLM to Trim the Fat

**Here's the secret:** Upload the entire Clew Forge repo + your project idea to Claude, ChatGPT, or your LLM of choice, and ask it to recommend which docs you actually need.

```
"I'm building [your idea] in [timeframe].
I have this framework with 20+ docs.
Which ones should I use? Which can I skip?
Here's the full repo: [paste or upload]"
```

Your LLM will:
- ✅ Analyze your situation (solo vs team, timeframe, complexity)
- ✅ Recommend Quick/Standard/Full mode
- ✅ Tell you which docs are essential
- ✅ Guide you through execution
- ✅ Adapt as you build

**This is the whole point of Clew Forge.** It's not just a framework—it's a framework designed to work with AI. Your LLM becomes your co-pilot, helping you stay organized while moving fast.

---

## 🎯 Quick Mode: Start with These 3 Files

All you need for a 48-hour hackathon or weekend project:

### 1. Define It
**`docs/00_BOOTSTRAP/REQUIREMENTS.md`**
- What problem are you solving?
- Who uses this?
- How do you know it works?
- **Time:** 5 minutes to fill out

### 2. Plan It
**`tasks/todo.md`**
- Features you're building
- In priority order
- **Time:** 5 minutes to list

### 3. Track It
**`docs/02_EXECUTION/activity.md`**
- What you built each hour
- Why you built it that way
- What's next
- **Time:** 30 seconds per entry (ongoing)

**Put your code at the root level. That's it. You're shipping.**

---

**Everything else in Clew Forge is optional.** Add them only if you need more structure:
- `PRD.md`, `MVP_SCOPE.md` → Add if you have a co-builder
- `ARCHITECTURE_OVERVIEW.md` → Add if your system is complex
- `DECISIONS_LOG.md` → Add if you're making important choices
- Deployment guides → Add before shipping to production

---

**You have 48 hours. Clew Forge was built for exactly this.**

### Why Use Clew Forge in a Hackathon?

1. **Structure removes decisions** - You know what to do next (no blank page)
2. **Activity log is your competitive advantage** - Judges see your thinking, not just code
3. **Quick Mode is made for speed** - 3 files, not 30 docs
4. **LLM integration makes you faster** - Your co-pilot handles boring parts
5. **You look professional** - Documentation, deployment, intentionality

### The 48-Hour Timeline

**Friday Evening (7pm - 9pm):** Setup
- Clone Clew Forge
- Read GETTING_STARTED.md (15 min)
- Fill REQUIREMENTS.md (15 min)
- Write todo.md (15 min)
- Set up your LLM (15 min)

**Saturday (9am - 9pm):** Build
- 6 hours: Core features
- 1 hour: Lunch
- 6 hours: More features + first deploy
- Update activity log as you go

**Sunday (10am - 5pm):** Polish & Ship
- 3 hours: Polish + mobile responsive
- 1 hour: Lunch
- 2 hours: QA + final deploy
- 1 hour: Practice your pitch

### Why Judges Love Clew Forge Projects

Traditional hackathon project: Commits without clear narrative
Clew Forge project: Clear structure + activity log showing your thinking

Judges see:
- ✅ You know how to organize work
- ✅ You made intentional decisions
- ✅ You shipped something real
- ✅ You understand product thinking

**That's a 2x better impression than just code.**

### Real Example

Team X built a [project name] in 36 hours using Clew Forge:
- **Friday evening:** Setup + requirements (they knew exactly what to build)
- **Saturday:** Built core + deployed (activity log showed progress)
- **Sunday:** Polished + presented (judges saw the whole journey)
- **Result:** [outcome]

**👉 [Read the full hackathon guide →](./HACKATHON_GUIDE.md)**

---

## How It Works

### Three Levels of Structure

**Quick Mode** (48 hours or less)
```
docs/
  ├─ REQUIREMENTS.md (what you're building)
tasks/
  └─ todo.md (what you're doing)
docs/
  └─ activity.md (what you did)
+ Your code
```
That's enough. Ship it.

**Standard Mode** (1-2 week project)
```
docs/00_BOOTSTRAP/
  ├─ REQUIREMENTS.md
  ├─ PRD.md
  └─ MVP_SCOPE.md
docs/01_ARCHITECTURE/
  └─ [your design]
tasks/
  └─ todo.md
docs/activity.md
+ Your code
```
Clear organization. Still fast.

**Full Mode** (serious project)
```
Everything above, plus:
- docs/02_EXECUTION/ (decisions, QA, logs)
- docs/03_DEPLOYMENT/ (security, scaling, integration)
- docs/04_REFERENCE/ (changelog, roadmap, philosophy)
- docs/05_TOOLING/ (automation, guides)
- scripts/ (automation suite)
- All the good stuff
```
Professional, scalable, ship with confidence.

### The Philosophy

Clew Forge is built on one idea: **Your reasoning should be as clear as your code.**

Too many projects have great code but no record of *why* decisions were made. Clew Forge fixes that by making documentation natural, not a burden.

---

## Getting Started

### For First-Time Users
👉 [Start here: GETTING_STARTED.md](./GETTING_STARTED.md)

**5-minute setup guide. Everything you need to begin.**

### For LLM Integration
👉 [Integrate Claude, ChatGPT, or Copilot →](./LLM_INTEGRATION.md)

**Examples for Claude Code, ChatGPT, GitHub Copilot, Google Vertex, and more.**

### For Hackathons & Indie Sprints
👉 [48-hour plan with timeline →](./HACKATHON_GUIDE.md)

**Real examples, deployment advice, judge-winning tips.**

### For Understanding Architecture
👉 [Architecture overview →](./docs/ARCHITECTURE_OVERVIEW.md)

**How Clew Forge is organized and why.**

### For Contributing
👉 [How to contribute →](./CONTRIBUTING.md)

**Easy, medium, hard contribution paths. We want your help.**

---

## Real Example: Project Audit Tool

Clew Forge includes a complete example project: **audit-toolkit**

It audits any GitHub project for quality metrics:
- Repository health (README, LICENSE, CONTRIBUTING)
- Code quality (recent activity, maintenance)
- Documentation completeness
- Issue/PR responsiveness
- Overall "shipping readiness" score

**Why this example?**
- **Meta:** Uses Clew Forge to audit projects that use Clew Forge
- **Real:** People actually want this tool
- **Complete:** Shows the full structure, from planning to shipping
- **Walkthrough:** Day-by-day guide showing how you'd build this

👉 [See the audit-toolkit example →](./examples/audit-toolkit/)

---

## Features

### ✅ Structured Planning
- REQUIREMENTS → PRD → MVP_SCOPE
- Know what you're building before you build it
- Avoid scope creep through clear boundaries

### ✅ Clear Building
- Task organization by phase
- Activity logging that shows progress
- Decision logging for future reference
- QA automation to catch problems early

### ✅ LLM Integration
- Prompts for Claude, ChatGPT, Copilot, Vertex
- Context that makes LLMs more useful
- Maintains your project's narrative

### ✅ Automation (Optional)
- Pre-commit hooks (formatting, security checks)
- GitHub Actions for CI/CD
- Activity log automation
- TODO ↔ GitHub sync
- Changelog generation

### ✅ Community Ready
- Contribution guidelines
- Code of conduct
- Easy paths to help
- Transparent roadmap

---

## The Philosophy Behind Clew Forge

### On Naming
**Clew** comes from Greek mythology: Ariadne gave Theseus a thread (clew) to navigate the Minotaur's labyrinth. Your project reasoning is your thread through complexity.

**Forge** is where reasoning becomes real. Where ideas become artifacts. Where thinking becomes shipping.

Together: **Where your reasoning threads become real artifacts.**

### On Structure
Structure isn't about bureaucracy. It's about clarity. Clew Forge is opinionated about *what you think about* (requirements, decisions, progress) but flexible about *how you think* (your tools, your pace, your style).

### On Shipping
Shipping is where ideas matter. Documentation without shipping is academic. Code without documentation is chaos. Clew Forge bridges both: structured thinking that enables shipping, shipping that validates thinking.

---

## For Teams

Clew Forge scales from solo builders to teams:

**Solo Developer**
- Quick Mode: 3 files + code
- Your thinking is clear to judges or future contributors

**Small Team (2-5 people)**
- Standard Mode: Clear ownership, decisions logged
- Activity log shows each person's contribution
- Easy onboarding for new team members

**Growing Team**
- Full Mode: All documentation, automation, processes
- Scales to 10+ people
- Roadmap and contribution paths attract help

---

## The Stack

**Documentation Framework:** Markdown (portable, version-controllable, readable)

**Automation:** Python + Bash (best tool for each job)

**CI/CD:** GitHub Actions (push + PR validation)

**LLM Integration:** Claude, ChatGPT, GitHub Copilot, Google Vertex (your choice)

**License:** Apache 2.0 (open, commercial-friendly)

---

## Roadmap

### v1.1 (Current)
- ✅ Core structure and templates
- ✅ LLM integration (Claude, ChatGPT, Copilot, Vertex)
- ✅ Automation scripts (optional)
- ✅ Example project (audit-toolkit)
- ✅ Hackathon guide

### v1.2 (Coming)
- [ ] CLI tool: `clew-forge init my-project`
- [ ] Better activity log visualization
- [ ] Integration with more LLMs
- [ ] GitHub template integration
- [ ] [Your ideas here]

### v2.0 (Future Vision)
- [ ] VS Code extension
- [ ] Web dashboard for project tracking
- [ ] GitHub template integration
- [ ] Community project registry
- [ ] Real-time collaboration features

### 🤝 Want to Help?

Clew Forge is open to contributions. Pick a difficulty level:

**Easy** 🟢
- Documentation improvements
- Translation to other languages
- New example projects
- Integration guides for frameworks

**Medium** 🟡
- CLI tool starter
- VS Code extension
- New automation scripts
- GitHub template support

**Hard** 🔴
- Dashboard UI
- Real-time collaboration
- Advanced automation
- Community features

👉 [See CONTRIBUTING.md for details](./CONTRIBUTING.md)

---

## FAQ

### Q: Is Clew Forge only for hackathons?
**A:** No! Hackathons are where it shines, but it works for any project: startup MVPs, indie projects, client work, team projects. Use Quick Mode for speed, Standard Mode for balance, Full Mode for complexity.

### Q: Do I have to use all the documentation?
**A:** No. Start with Quick Mode (3 files). Add more as you need it. It's your project.

### Q: Can I use Clew Forge with my existing project?
**A:** Yes! Copy the templates you like. Ignore the rest. It's designed to be modular.

### Q: What if I don't have an LLM?
**A:** You still get all the structure. LLM integration is optional. You can build without it.

### Q: Does Clew Forge work for non-technical projects?
**A:** Yes! The structure is agnostic. Use it for design projects, research, business planning, anything that benefits from clear thinking + organized building.

### Q: How do I get help?
**A:** See [CONTRIBUTING.md](./CONTRIBUTING.md) for questions, issues, and discussions.

---

## Acknowledgments

Clew Forge was built with inspiration and support from the community:

**Special Thanks to:**
- **Ed & AI Masters Community** (https://www.skool.com/ai-masters-community) - Provided foundational frameworks and best practices for AI-assisted development
- **Claude AI** (Anthropic) - Architecture design, documentation, and refactoring
- **ChatGPT** (OpenAI) - Ideation and alternative approaches

See [ACKNOWLEDGMENTS.md](./ACKNOWLEDGMENTS.md) for full credits.

---

## License

Clew Forge is released under the Apache 2.0 License. See [LICENSE.md](./LICENSE.md) for details.

**In plain English:** You can use Clew Forge for anything (commercial, open source, personal). You just need to include a copy of the license and list any modifications you make.

---

## Get Started

Pick your starting point:

- **5-minute setup?** → [GETTING_STARTED.md](./GETTING_STARTED.md)
- **Hackathon mode?** → [HACKATHON_GUIDE.md](./HACKATHON_GUIDE.md)
- **LLM integration?** → [LLM_INTEGRATION.md](./LLM_INTEGRATION.md)
- **See an example?** → [examples/audit-toolkit/](./examples/audit-toolkit/)
- **Ready to build?** → Start with [GETTING_STARTED.md](./GETTING_STARTED.md), then clone and go!

---

**Built by makers, for makers. Ship something real.** 🚀

---

*Last updated: October 2025*
*Version: 1.2.1*
