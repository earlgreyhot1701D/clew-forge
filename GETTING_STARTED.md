# GETTING_STARTED.md

**Your Five-Minute Setup Guide**

New here? Great. This guide gets you from "What is this?" to "I'm building" in ~5 minutes.

---

## 30-Second Summary

This is a **project structure** that makes it easy to:
- ✅ Plan clearly (REQUIREMENTS, PRD, scope)
- ✅ Execute efficiently (todo list, activity log)
- ✅ Build with AI help (any LLM works)
- ✅ Ship with confidence (QA checklist, deployment guides)

**Two modes:** Quick (solo projects) or Full (teams).

Pick your speed. Go.

---

## Step 1: Pick Your Mode (1 minute)

### Quick Mode
**For:** Solo developers, side projects, hackathons, "I just want to build"

**Setup time:** 5 minutes  
**Files you'll use:** 3-4  
**Best for:** "I'm shipping this weekend"

### Full Mode
**For:** Teams, client work, production systems, "I need structure and accountability"

**Setup time:** 30 minutes  
**Files you'll use:** Everything, but staged  
**Best for:** "This is a real project that needs to scale"

---

## If You Picked Quick Mode → Go Here

### Quick Mode: The 5-Minute Setup

**1. Clone/Copy the repo**
```bash
git clone https://github.com/yourusername/[project-name] my-project
cd my-project
```

**2. Edit ONE file: REQUIREMENTS.md**

Replace the # Getting Started with Clew Forge

**Get up and running in 5 minutes. No experience necessary.**

This guide walks you through setting up your first Clew Forge project. It's beginner-friendly and requires nothing but a terminal and a text editor.

---

## What You'll Learn

By the end of this guide, you'll have:
- ✅ Clew Forge cloned to your computer
- ✅ Your first project structure set up
- ✅ Know what each file does
- ✅ Be ready to start building

**Time required: 5 minutes**

---

## Step 1: Clone Clew Forge (1 minute)

### What This Does
You're copying Clew Forge to your computer. Think of it like downloading a template.

### How to Do It

Open your terminal and run:

```bash
git clone https://github.com/yourusername/clew-forge my-first-project
cd my-first-project
```

**What just happened:**
- `git clone` = Download Clew Forge
- `https://github.com/yourusername/clew-forge` = The Clew Forge repository (replace `yourusername`)
- `my-first-project` = The folder name (you can change this to your project name)
- `cd my-first-project` = Open that folder in your terminal

**Next step: Define your project**

---

## Step 2: Understand the Structure (1 minute)

### What Files Do What?

Here's what you need to know. You're looking at the root folder of your project:

```
my-first-project/
├── README.md                          ← Info about YOUR project (you'll edit this)
├── GETTING_STARTED.md                 ← This file!
├── LLM_INTEGRATION.md                 ← How to connect Claude/ChatGPT
├── docs/                              ← Your documentation
│   ├── 00_BOOTSTRAP/
│   │   ├── REQUIREMENTS.md            ← IMPORTANT: What are you building?
│   │   ├── PRD.md                     ← Product roadmap (optional)
│   │   └── MVP_SCOPE.md               ← What's in v1? (optional)
│   ├── 01_ARCHITECTURE/               ← Design decisions
│   ├── 02_EXECUTION/
│   │   └── activity.md                ← IMPORTANT: What did you do today?
│   ├── 03_DEPLOYMENT/                 ← Security, scaling, deployment
│   ├── 04_REFERENCE/                  ← Changelog, roadmap
│   └── 05_TOOLING/                    ← Automation guides
├── tasks/
│   └── todo.md                        ← IMPORTANT: Your task list
├── scripts/                           ← Automation scripts (optional)
├── examples/                          ← Example projects (reference)
└── .github/
    └── workflows/                     ← GitHub Actions (optional)
```

### The Three Files You'll Edit First

**For Quick Mode (if you're in a hurry):**
1. `docs/00_BOOTSTRAP/REQUIREMENTS.md` - What are you building?
2. `tasks/todo.md` - What are the steps?
3. `docs/02_EXECUTION/activity.md` - Update this as you build

**That's it.** Everything else is optional.

---

## Step 3: Fill Out Your Requirements (2 minutes)

### What This Does
You're defining what you're building. This takes 5 minutes and saves you hours of confusion later.

### How to Do It

Open `docs/00_BOOTSTRAP/REQUIREMENTS.md` in your text editor:

```bash
# On Mac/Linux
nano docs/00_BOOTSTRAP/REQUIREMENTS.md

# Or use your favorite editor (VS Code, Sublime, etc)
code docs/00_BOOTSTRAP/REQUIREMENTS.md
```

### What You'll Fill In

You'll see a template with sections like:

```markdown
# Requirements

## Problem
What problem are you solving? (1-2 sentences)

Example: "Developers waste time finding good tools. 
We're building a search engine to discover them faster."

## Users
Who uses this? (1-2 sentences)

Example: "Solo developers, startup founders, and engineering managers 
who want to discover new tools without digging through Reddit."

## Success Criteria
How do you know it works? (1-3 sentences)

Example: "Users find 3+ new tools they didn't know about, 
complete a search in under 2 minutes, and share it with 1+ person."

## Out of Scope (Optional)
What are you NOT building?

Example: "We're not building a rating system. We're not building tutorials. 
We're just building search + discovery."
```

### Fill It In

Replace the examples with your own project. Don't overthink it. 5 minutes, honest answers.

**Why this matters:**
- Clarity prevents wasted work
- Keeps you focused when scope creep happens
- Helps you explain your project to judges/investors

**Done?** Great! Move to Step 4.

---

## Step 4: List Your Tasks (1 minute)

### What This Does
You're breaking down "build my project" into actual tasks. This is your roadmap.

### How to Do It

Open `tasks/todo.md`:

```bash
nano tasks/todo.md
```

### What You'll Write

Keep it simple. List the features/tasks:

```markdown
# Project Todo

## Phase 1: Core (Do First)
- [ ] Basic UI/interface
- [ ] Connect to data source
- [ ] Display results

## Phase 2: Polish (Do Second)
- [ ] Mobile responsive
- [ ] Error handling
- [ ] Visual polish

## Phase 3: Ship (Do Last)
- [ ] Deploy to live
- [ ] Test with real users
- [ ] Tell people about it
```

**That's it.** You now have a plan.

---

## Step 5: Make Your First Commit (30 seconds)

### What This Does
You're saving your setup to Git (version control). This is like hitting "save" but better.

### How to Do It

```bash
git add .
git commit -m "Init: Project setup - [your project name]"
git push
```

**What happened:**
- `git add .` = Stage all your changes
- `git commit -m "..."` = Save with a message
- `git push` = Upload to GitHub

**Congratulations!** You've set up Clew Forge. 🎉

---

## Step 6: Choose Your Path

### Path A: Quick Mode (Hackathons, Sprints - 48 hours)

You're done with setup. Now you just build:

1. Open `docs/02_EXECUTION/activity.md`
2. Start coding
3. Each time you finish something, add an entry to `activity.md`:
   ```
   ## 2025-10-19 - 2:30pm
   
   **Completed:** Built search UI
   **Why:** Needed MVP first
   **Next:** Connect to API
   ```
4. Commit when ready: `git commit -m "Feature: Search UI"`
5. Repeat until done

**When you're ready for an LLM co-pilot:**
→ [See LLM_INTEGRATION.md](./LLM_INTEGRATION.md)

---

### Path B: Standard Mode (1-2 week project)

You want more structure but not too much:

1. ✅ You've filled REQUIREMENTS.md
2. ✅ You've filled tasks/todo.md
3. Now fill these (5 min each):
   - `docs/00_BOOTSTRAP/PRD.md` - Product roadmap
   - `docs/00_BOOTSTRAP/MVP_SCOPE.md` - What's in v1?
   - `docs/01_ARCHITECTURE/ARCHITECTURE_OVERVIEW.md` - Design overview
4. Build using Quick Mode (activity log, commits)
5. Update other docs as you go

**When done, you have professional documentation.**

---

### Path C: Full Mode (Serious project, team, long-term)

You want everything organized:

1. ✅ You've done Standard Mode
2. Now add these as you build:
   - `docs/02_EXECUTION/` - Log decisions, QA checks
   - `docs/03_DEPLOYMENT/` - Security, scaling, deployment
   - `scripts/` - Run automation (optional)
   - `docs/templates/` - Use for PRs, issues, decisions
3. Everything tracked, nothing forgotten

**When done, you have investor-ready documentation.**

---

## Step 7: Set Up Your LLM (Optional but Recommended)

### Why This Helps
Your LLM (Claude, ChatGPT, etc) becomes a co-pilot. It handles boring work while you focus on decisions.

### How to Do It

1. Open [LLM_INTEGRATION.md](./LLM_INTEGRATION.md)
2. Copy your project context
3. Paste into your LLM: "Here's my project. Let's build it together."
4. Follow the example prompts

**Example:**
```
I'm building a search engine for discovering tools.

Problem: Developers waste time finding good tools
Users: Solo devs, founders, managers
Success: Find 3+ tools in under 2 minutes

Here's my todo list:
[paste from tasks/todo.md]

Let's build this in a weekend. What should we do first?
```

Your LLM will suggest the fastest approach. You approve. It builds. You integrate.

---

## FAQ

### Q: I don't understand Git. Can I skip it?
**A:** Not really. Git tracks your changes. GitHub shares your work. You need both. But don't worry—the commands above are all you need. Learn more later.

### Q: Do I have to use all the documentation?
**A:** No! Start with Quick Mode (3 files). Add more as needed. It's designed to scale from simple to complex.

### Q: What if I get stuck?
**A:** 
- Questions? See [README.md](./README.md#faq)
- Building a hackathon project? See [HACKATHON_GUIDE.md](./HACKATHON_GUIDE.md)
- Want LLM help? See [LLM_INTEGRATION.md](./LLM_INTEGRATION.md)
- Want to contribute? See [CONTRIBUTING.md](./CONTRIBUTING.md)

### Q: How do I personalize the README?
**A:** Edit README.md:
```bash
nano README.md
```
Replace the generic info with YOUR project info. Here's what to change:
- Project name (top)
- Project description (first paragraph)
- Quick Start section (your specific steps)
- FAQ (your project's FAQs)

### Q: Can I add my own docs?
**A:** Yes! Add them anywhere:
```bash
mkdir docs/06_MY_SECTION
echo "# My Docs" > docs/06_MY_SECTION/my-doc.md
```

---

## Your Next Step

**Ready to build?**

Choose your path:
- **Quick Mode?** → Start coding, update `docs/activity.md` as you go
- **Need LLM help?** → [Read LLM_INTEGRATION.md](./LLM_INTEGRATION.md)
- **Hackathon?** → [Read HACKATHON_GUIDE.md](./HACKATHON_GUIDE.md)
- **See an example?** → [Check audit-toolkit](./examples/audit-toolkit/)
- **Want full docs?** → Go Standard or Full Mode

---

## The Checklist

Before you start building, confirm you've done:

- [ ] Cloned Clew Forge to your computer
- [ ] Understood the folder structure
- [ ] Filled `docs/00_BOOTSTRAP/REQUIREMENTS.md`
- [ ] Filled `tasks/todo.md`
- [ ] Made your first Git commit
- [ ] Chosen your path (Quick/Standard/Full)

**Done?** You're ready to ship. Let's go! 🚀

---

## Need Help?

- **Setup questions?** See [FAQ](#faq) above
- **Building a hackathon project?** [HACKATHON_GUIDE.md](./HACKATHON_GUIDE.md)
- **LLM integration?** [LLM_INTEGRATION.md](./LLM_INTEGRATION.md)
- **Want more examples?** [examples/](./examples/)
- **Contributing?** [CONTRIBUTING.md](./CONTRIBUTING.md)

---

**Now go build something amazing.** ✨ with:
- **What problem are we solving?** (1-2 sentences)
- **Who's it for?** (who uses this)
- **How do we know it works?** (success criteria)

Example:
```markdown
# Requirements

**Problem:** Finding good local restaurants is time-consuming.

**Users:** Busy professionals, date planners, foodies.

**Success:** Users can find 5+ good restaurants in their neighborhood in <2 minutes.
```

That's it. Seriously.

**3. Edit TWO: tasks/todo.md**

Add 10-15 things you need to do:

```markdown
# Project Todo

## Core Features
- [ ] Basic UI with search bar
- [ ] Connect to restaurant API
- [ ] Display results (name, rating, location)
- [ ] Save favorites

## Polish
- [ ] Mobile responsive
- [ ] Error handling
- [ ] Basic styling

## Ship
- [ ] Deploy to [where]
- [ ] Tell 5 people about it
```

**4. Copy your LLM prompt**

Open `LLM_INTEGRATION.md` (or `PROMPT_FOR_[YOURLLM].md`)

Copy it into Claude Code or ChatGPT or your LLM of choice.

Add your project context:
```
Project: Restaurant finder
Problem: [copy from REQUIREMENTS.md]
Stack: [Python/JavaScript/etc]
```

**5. Start building**

Tell your LLM: "I'm on task #1 from todo.md. Let's build the basic UI. Here's the todo list: [paste]"

LLM will:
- Show you code
- Explain what it's doing
- Tell you what's next
- Help you check off items

**6. That's it.**

You're building. Check off items as you go. Update activity.md every few hours if you want (optional in Quick Mode).

---

## If You Picked Full Mode → Go Here

### Full Mode: The Structured Path

**Phase 0: One-time setup** (5 minutes)

```bash
git clone https://github.com/yourusername/[project-name] my-project
cd my-project
```

**Phase 1: Planning** (30 minutes, do this once)

Read these files in order:
1. `docs/TEMPLATE.md` - Understand the structure
2. `docs/MODES.md` - Understand Quick vs Full

Fill out these files:
1. `docs/00_BOOTSTRAP/REQUIREMENTS.md` - What problem?
2. `docs/00_BOOTSTRAP/PRD.md` - How are we solving it?
3. `docs/00_BOOTSTRAP/MVP_SCOPE.md` - What's phase 1?

Check with your team. Adjust if needed.

**Phase 2: Architecture** (1-2 hours, plan once)

Read and fill:
1. `docs/01_ARCHITECTURE/ARCHITECTURE_OVERVIEW.md` - How does it work?
2. `docs/01_ARCHITECTURE/TECH_STACK_GUIDE.md` - What tech?
3. `docs/01_ARCHITECTURE/DESIGN_NOTES.md` - Design thinking

Document decisions in `docs/DECISIONS_LOG.md`

**Phase 3: Execution** (ongoing)

1. Use `tasks/todo.md` as your guide
2. Break it into phases/sprints
3. Update `docs/activity.md` as you build
4. Check off items
5. Use your LLM with `LLM_INTEGRATION.md`

**Phase 4: QA & Ship**

1. Run through `docs/02_EXECUTION/QA_CHECKLIST.md`
2. Follow `docs/03_DEPLOYMENT/INTEGRATION_GUIDE.md`
3. Ship!

---

**Where to Find Things**

**I need to...**

**Understand what this is** → README.md (5 min read)

**Get building fast** → Quick Mode section above (5 min)

**Understand the philosophy** → `docs/PROJECT_PHILOSOPHY.md`

**Work with an LLM** → `LLM_INTEGRATION.md`

**See an example project** → `EXAMPLE_PROJECT_AUDIT_TOOLKIT.md`

**Plan my project** → `docs/00_BOOTSTRAP/`

**Design architecture** → `docs/01_ARCHITECTURE/`

**Build the thing** → Use `tasks/todo.md` + `LLM_INTEGRATION.md`

**Track what I've done** → `docs/02_EXECUTION/activity.md` (update as you go)

**Make decisions** → `docs/02_EXECUTION/DECISIONS_LOG.md` (log your choices)

**Make sure it's ready** → `docs/02_EXECUTION/QA_CHECKLIST.md` (before shipping)

**Deploy it** → `docs/03_DEPLOYMENT/`

**Something else** → Check the file list in README.md

---

## Common Questions

**Q: Do I have to fill out all the docs?**
A: No. Quick Mode = 2-3 files. Full Mode = more, but optional depth. Start with REQUIREMENTS.md and todo.md. Add more as needed.

**Q: Can I use this with [LLM]?**
A: Yes. Claude, ChatGPT, Copilot, Vertex, etc. See `LLM_INTEGRATION.md` for tool-specific guidance.

**Q: How do I work with my LLM?**
A: Read `LLM_INTEGRATION.md`. It has patterns, best practices, and tool-specific prompts.

**Q: What's the difference between Quick and Full?**
A: Quick Mode = minimal docs, you're moving fast. Full Mode = docs for every phase, you're building something important.

**Q: Is this language-specific?**
A: No. Python, JavaScript, Rust, Go, whatever. This is pure structure.

**Q: Can I skip parts?**
A: Yes. Start minimal. Add complexity only when you need it.

**Q: How do I know when to use Full Mode?**
A: If you're building alone and shipping this week → Quick. If you're building with others or it's production → Full.

**Q: Can I change file names?**
A: Absolutely. Customize to your preference. Just update references.

**Q: What if I get stuck?**
A: 1) Check the example project. 2) Read the relevant doc. 3) Ask your LLM. 4) Open an issue on GitHub.

---

## The Absolute Fastest Path

**In under 5 minutes:**

```bash
git clone ...
cd my-project
# Edit REQUIREMENTS.md (2 min)
# Edit tasks/todo.md (2 min)
# Copy LLM_INTEGRATION.md into your LLM
# Start building
```

That's it. You're officially in Quick Mode, building.

---

## The Structured Path

**If you want professional structure:**

1. Read `TEMPLATE.md` (understand structure)
2. Read `MODES.md` (confirm you want Full Mode)
3. Fill `docs/00_BOOTSTRAP/` files (plan)
4. Fill `docs/01_ARCHITECTURE/` files (design)
5. Use `tasks/todo.md` to execute
6. Update `docs/activity.md` as you build
7. Run `docs/QA_CHECKLIST.md` before ship
8. Deploy using `docs/03_DEPLOYMENT/`

---

## Pro Tips

💡 **Tip 1: Start minimal**
Begin with Quick Mode. Add docs as needed. You don't need everything immediately.

💡 **Tip 2: Use your LLM**
`LLM_INTEGRATION.md` is there for a reason. Your AI tool works better with structure. Use it.

💡 **Tip 3: Update activity.md regularly**
It looks optional but it's not. When you return to the project (or a teammate does), this is gold.

💡 **Tip 4: Commit often**
Small, focused commits. Clear messages. Your git log becomes a narrative of your project.

💡 **Tip 5: Check off items**
It feels good. Dopamine is real. Mark things done. Celebrate progress.

---

## Next Steps

**Pick your path:**

- **Quick Mode?** → Edit REQUIREMENTS.md + tasks/todo.md + start building
- **Full Mode?** → Read `docs/TEMPLATE.md` → Fill `docs/00_BOOTSTRAP/`
- **Example?** → Check out `examples/weather-dashboard/`
- **More help?** → Read `LLM_INTEGRATION.md`

---

## You're Ready

You have everything you need. Seriously.

The structure is here. The templates are here. The guidance is here.

Now it's just execution.

Pick a path. Take the first step. 

The rest follows naturally.

---

**Go build something.** 🚀

And if you get stuck, you know where to find help:
- README.md (overview)
- LLM_INTEGRATION.md (how to work with AI)
- The example project (see it working)
- Your LLM tool (ask questions)

Good luck. You've got this. 💪
