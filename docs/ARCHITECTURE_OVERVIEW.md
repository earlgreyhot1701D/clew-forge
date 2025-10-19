# Architecture Overview

## The Three-Layer Philosophy

Clew Forge is built on three core principles:

1. **Your reasoning should be as clear as your code** - Documentation isn't extra. It's part of the system.
2. **Documentation scales from simple to complex** - Start with 3 files. Add more only when you need them.
3. **You pick your level of structure** - Quick mode for speed, Standard mode for teams, Full mode for production.

---

## How This Works

### Quick Mode: Start Simple ⚡
**When:** Shipping in 48 hours (solo developer, hackathon)  
**Files you use:** 3  
**Setup time:** 5 minutes

```
docs/00_BOOTSTRAP/REQUIREMENTS.md  ← What are you building?
tasks/todo.md                       ← What are you doing?
docs/02_EXECUTION/activity.md       ← What did you do?
+ Your code
```

Your code lives at the root level or in a `src/` folder. That's enough to ship.

### Standard Mode: Add Structure 📋
**When:** 1-2 week project, small team (2-5 people)  
**Files you use:** 8-10  
**Setup time:** 30 minutes

Everything in Quick Mode, plus:
```
docs/00_BOOTSTRAP/PRD.md                ← How are you solving it?
docs/00_BOOTSTRAP/MVP_SCOPE.md          ← What's in v1?
docs/01_ARCHITECTURE/ARCHITECTURE_OVERVIEW.md  ← System design
docs/02_EXECUTION/DECISIONS_LOG.md      ← Choices you're making
docs/02_EXECUTION/QA_CHECKLIST.md       ← Pre-ship validation
```

You now have professional documentation. Clear ownership. Onboarding is fast.

### Full Mode: Complete Structure 🏢
**When:** Serious project, team (5+ people), long-term, production  
**Files you use:** 20+  
**Setup time:** 1-2 hours

Everything above, plus:
```
docs/03_DEPLOYMENT/           ← Security, scaling, deployment
docs/04_REFERENCE/            ← Changelog, roadmap, philosophy
docs/05_TOOLING/              ← Automation, contribution guides
scripts/                      ← Automation suite
```

Professional, scalable, ready to grow.

---

## Directory Structure Explained

```
project-root/
│
├── README.md                          ← Overview of your project
├── GETTING_STARTED.md                 ← Beginner guide (copy this)
├── LLM_INTEGRATION.md                 ← AI co-pilot setup
├── PROMPT.md                          ← Context for your LLM
│
├── docs/                              ← All documentation
│   │
│   ├── 00_BOOTSTRAP/                  ← Planning Phase (Day 1)
│   │   ├── REQUIREMENTS.md            ← ESSENTIAL: What problem?
│   │   ├── PRD.md                     ← OPTIONAL: How solving it?
│   │   └── MVP_SCOPE.md               ← OPTIONAL: What's in v1?
│   │
│   ├── 01_ARCHITECTURE/               ← Design Phase (Day 1-2)
│   │   ├── ARCHITECTURE_OVERVIEW.md   ← OPTIONAL: System design
│   │   ├── TECH_STACK_GUIDE.md        ← OPTIONAL: Tech choices
│   │   └── DESIGN_NOTES.md            ← OPTIONAL: Why these choices?
│   │
│   ├── 02_EXECUTION/                  ← Building Phase (Ongoing)
│   │   ├── activity.md                ← ESSENTIAL: Daily progress
│   │   ├── DECISIONS_LOG.md           ← OPTIONAL: Choices made
│   │   └── QA_CHECKLIST.md            ← OPTIONAL: Pre-ship validation
│   │
│   ├── 03_DEPLOYMENT/                 ← Shipping Phase (Before launch)
│   │   ├── INTEGRATION_GUIDE.md       ← OPTIONAL: How to integrate
│   │   ├── SECURITY.md                ← OPTIONAL: Security practices
│   │   ├── SCALABILITY.md             ← OPTIONAL: Growth planning
│   │   └── DEPLOYMENT_TIERS.md        ← OPTIONAL: Deployment options
│   │
│   ├── 04_REFERENCE/                  ← Ongoing Resources
│   │   ├── CHANGELOG.md               ← OPTIONAL: Version history
│   │   ├── ROADMAP.md                 ← OPTIONAL: Future plans
│   │   └── PROJECT_PHILOSOPHY.md      ← OPTIONAL: Why we built this
│   │
│   ├── 05_TOOLING/                    ← Automation & Contribution
│   │   ├── CONTRIBUTING.md            ← OPTIONAL: How to help
│   │   └── CI_CD_SETUP.md             ← OPTIONAL: Automation guides
│   │
│   ├── templates/                     ← Reusable Templates
│   │   ├── ADR_TEMPLATE.md            ← Architecture Decision Record
│   │   ├── PR_TEMPLATE.md             ← Pull Request template
│   │   ├── ISSUE_TEMPLATE.md          ← Issue template
│   │   ├── DESIGN_DRAFT.md            ← Design document template
│   │   └── REVIEW_REQUEST.md          ← Code review template
│   │
│   └── _stack-snippets/               ← Language-Specific Examples
│       ├── README.md
│       ├── python-basic.md
│       ├── aws-python.md
│       ├── google-vertex.md
│       └── js-web.md
│
├── tasks/
│   └── todo.md                        ← ESSENTIAL: Your task list (update as you build)
│
├── scripts/                           ← Automation Scripts (Optional)
│   ├── prepush.sh                     ← Pre-commit validation
│   ├── scripts_qa_check.sh            ← Quality assurance checks
│   └── scripts_log.sh                 ← Activity logging helper
│
├── examples/                          ← Reference Examples (Optional)
│   └── audit-toolkit/                 ← Full working example project
│
├── design/                            ← Design Mockups & Assets (Optional)
│   └── README.md
│
├── html/                              ← HTML Templates (Optional)
│   └── README.md
│
└── [your code here]                   ← Your actual project code
    ├── src/
    ├── tests/
    └── ...
```

**Legend:**
- 🔴 **ESSENTIAL** - You'll use this in Quick Mode
- 🟡 **OPTIONAL** - Add when you need it
- 🔵 **REFERENCE** - Templates and examples

---

## Data Flow

```
START
  ↓
REQUIREMENTS.md          "What problem are we solving?"
  ↓
tasks/todo.md           "What do we need to build?"
  ↓
ARCHITECTURE.md (opt)   "How will we build it?"
  ↓
activity.md + Code      "Building it now..."
  ↓
DECISIONS_LOG.md (opt)  "Why we made these choices"
  ↓
QA_CHECKLIST.md (opt)   "Is it ready to ship?"
  ↓
DEPLOYMENT/ (opt)       "How do we ship it?"
  ↓
SHIP
  ↓
CHANGELOG.md (opt)      "What changed?"
ROADMAP.md (opt)        "What's next?"
```

All connected by: **Git commits, clear naming, and narrative**

---

## Quick Mode: The Essential 3 Files

**For a 48-hour project, use ONLY these:**

### File 1: REQUIREMENTS.md
**Location:** `docs/00_BOOTSTRAP/REQUIREMENTS.md`  
**Size:** 1 page  
**Time to fill:** 5 minutes  
**Why:** Prevents scope creep. Keeps you focused.

Template:
```markdown
# Requirements

## Problem
What problem are you solving? (1-2 sentences)

## Users
Who uses this? (1-2 sentences)

## Success Criteria
How do you know it works? (2-3 sentences)

## Out of Scope
What are you NOT building?
```

### File 2: todo.md
**Location:** `tasks/todo.md`  
**Size:** 10-20 items  
**Time to fill:** 5 minutes  
**Why:** Clear roadmap. Know what's next.

Template:
```markdown
# Project Todo

## Phase 1: Core
- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3

## Phase 2: Polish
- [ ] Mobile responsive
- [ ] Error handling
- [ ] Testing

## Phase 3: Ship
- [ ] Deploy
- [ ] Tell people
```

### File 3: activity.md
**Location:** `docs/02_EXECUTION/activity.md`  
**Size:** 1 entry per hour  
**Time per entry:** 30 seconds  
**Why:** Shows your thinking. Judges love it.

Template:
```markdown
## 2025-10-19 - 2:00 PM

**Completed:** Built search UI  
**Why:** Users need to find results fast  
**Next:** Connect to API

## 2025-10-19 - 3:00 PM

**Completed:** API integration  
**Why:** Without this, search doesn't work  
**Next:** Add error handling
```

---

## Scaling Example

### Day 1 - Idea to MVP (3 files)
```
REQUIREMENTS.md
todo.md
activity.md
```
Status: **You have a plan and started building**

### Day 2-3 - Build to Polish (6 files)
```
Add:
- PRD.md
- MVP_SCOPE.md
- ARCHITECTURE_OVERVIEW.md
```
Status: **You have structure and clarity**

### Day 4+ - Polish to Production (12+ files)
```
Add:
- DECISIONS_LOG.md
- QA_CHECKLIST.md
- DEPLOYMENT guides
- CHANGELOG.md
```
Status: **You have professional documentation**

**Key insight:** Each stage adds complexity only when you need it. No wasted time.

---

## When to Use Each Folder

| Folder | Purpose | When to Fill | Who Updates | Example |
|--------|---------|--------------|-------------|---------|
| 00_BOOTSTRAP | Planning | Day 1 (once) | Project lead | "We're building a search tool" |
| 01_ARCHITECTURE | Design | Day 1-2 (once) | Tech lead | "We use React + Node + Postgres" |
| 02_EXECUTION | Building | Every day | Everyone | "Completed: Search UI" |
| 03_DEPLOYMENT | Shipping | Day before launch | DevOps/Tech lead | "Deployment steps and security" |
| 04_REFERENCE | Documentation | As you go | Everyone | "v1.0 released today" |
| 05_TOOLING | Automation | As needed | Tech lead | "How to contribute" |

---

## Decision Points: Quick vs Standard vs Full

### Question 1: How long do you have?
- **48 hours or less?** → Use Quick Mode (3 files)
- **1-2 weeks?** → Use Standard Mode (8-10 files)
- **1+ months?** → Use Full Mode (all files)

### Question 2: How many people?
- **Solo developer?** → Quick Mode works
- **2-5 people?** → Standard Mode needed
- **5+ people?** → Full Mode recommended

### Question 3: What's the risk?
- **Fun side project?** → Quick Mode fine
- **Client work?** → Standard Mode recommended
- **Production system?** → Full Mode required

### Question 4: Will you return to it?
- **No (it's done)?** → Quick Mode sufficient
- **Maybe (ongoing)?** → Standard Mode better
- **Yes (long-term)?** → Full Mode essential

---

## Philosophy: Why Structure Matters

### The Problem Without Structure
```
Developer A: "What were we trying to build again?"
Developer B: "Check the Git history"
Developer A: "There are 200 commits"
Developer B: "...Yeah"
```

### The Solution With Clew Forge
```
Developer A: "What were we trying to build?"
Developer B: "See docs/00_BOOTSTRAP/REQUIREMENTS.md"
Developer A: "Got it. Next?"
Developer B: "tasks/todo.md shows our roadmap"
Developer A: "Clear. Let me check activity.md to see progress"
Developer B: "Now you're up to speed"
```

**Time saved:** 30 minutes → 2 minutes  
**Clarity:** Medium → High  
**Professionalism:** Not obvious → Obvious

---

## Getting Started

**You now understand the architecture.**

Next steps:
1. **Quick Mode?** → Fill REQUIREMENTS.md, todo.md, activity.md → Start building
2. **Standard Mode?** → Read GETTING_STARTED.md → Fill additional docs → Build
3. **Full Mode?** → Read GETTING_STARTED.md → Full setup → Professional build

Choose your level. Start building. The structure supports you, not the other way around.

---

*Architecture Overview Complete*  
*Choose your mode. Ship something real.*
