# Example Project: audit-toolkit

**A real, useful example project that uses Clew Forge to audit GitHub projects.**

This example shows you:
- How to structure a project with Clew Forge
- How to use all the templates
- How to organize your work
- How to track progress

---

## What audit-toolkit Does

Audit any GitHub project for quality metrics:

- **Repository Health:** README, LICENSE, CONTRIBUTING present?
- **Code Quality:** Recent commits? Active maintenance?
- **Documentation:** Completeness and clarity scores
- **Community:** Issue/PR response time
- **Shipping Readiness:** Overall score (0-100)

Real, useful tool that solves a real problem.

---

## Example Project Structure

```
examples/audit-toolkit/
├── README.md                 (Walkthrough - start here!)
├── REQUIREMENTS.md           (What we're building)
├── PRD.md                    (Product roadmap)
├── MVP_SCOPE.md              (V1 boundaries)
├── tasks/
│   └── todo.md              (Our task list)
├── docs/
│   ├── activity.md          (What we did each day)
│   ├── ARCHITECTURE.md      (How it works)
│   └── API_DESIGN.md        (API endpoints)
├── PROMPT_FOR_CLAUDE.md     (Claude context)
├── PROMPT_FOR_CHATGPT.md    (ChatGPT context)
├── html/
│   └── audit-report.html    (Output UI)
└── WALKTHROUGH.md           (Step-by-step guide)
```

---

## REQUIREMENTS.md

```
# Requirements - Audit Toolkit

## Problem Statement
Developers want to evaluate GitHub projects for quality before using them.
Currently there's no standard way to do this - it's manual and subjective.

## Users
- Indie developers researching libraries
- Tech leads evaluating open source projects
- Community members assessing projects to contribute to

## Success Criteria
- Users can audit a project in < 1 minute
- Metrics are clear and actionable
- Score correlates with project quality
- Results are shareable (link or screenshot)

## Must-Have Features (V1)
- Audit public GitHub projects
- Check repository health (README, LICENSE, CONTRIBUTING)
- Check code quality (recent commits, branch activity)
- Check documentation completeness
- Calculate overall "shipping readiness" score (0-100)
- Display results in clean HTML report

## Nice-to-Have Features
- Support for private repos (with auth)
- Trend tracking (audit same project over time)
- Comparison between projects
- Export to CSV/JSON
- GitHub integration (show badge in README)

## Out of Scope
- Code review/static analysis
- Security scanning
- Performance testing
- User contributions (not features - just reporting)

## Constraints
- Must work with GitHub API (free tier)
- Must complete audit in < 30 seconds
- Must handle rate limiting gracefully

## Success Metrics
- 100+ audits in first month
- 4+ star rating if released
- Positive feedback from community
```

---

## MVP_SCOPE.md

```
# MVP Scope - audit-toolkit V1

## What's Included in V1
1. CLI: `audit-toolkit <github-repo-url>`
2. GitHub project analysis
   - Repository metadata extraction
   - File presence detection (README, LICENSE, CONTRIBUTING)
   - Recent commit checking
   - Branch activity analysis
3. Quality scoring algorithm
   - 100 points total
   - Documentation: 20 pts
   - Maintenance: 30 pts
   - Community: 25 pts
   - Code organization: 25 pts
4. HTML report output
   - Visual score (0-100)
   - Breakdown by category
   - Recommendations
5. CLI output (table format)

## What's Excluded (Planned Later)
- Private repo support (V1.1)
- Trend tracking (V1.2)
- Web interface (V2.0)
- GitHub app (V2.0)

## Timeline
- Fri evening: Setup, plan (2 hrs)
- Sat: Build core logic (8 hrs)
- Sat evening: Add output formatting (3 hrs)
- Sun: Polish, deploy (4 hrs)

## Success Criteria
- Audit 100+ repos without errors
- Results match manual assessment
- Completion time: < 30 seconds per repo
- All tests pass
```

---

## tasks/todo.md

```
# Project Todo - audit-toolkit

## Saturday Morning (Core)
- [x] Set up project structure
- [x] Connect to GitHub API
- [ ] Build core audit logic
- [ ] Extract repository metadata
- [ ] Check required files (README, LICENSE, etc)

## Saturday Afternoon (Continue)
- [ ] Implement quality scoring
- [ ] Add commit analysis
- [ ] Create scoring algorithm
- [ ] Handle edge cases

## Saturday Evening (Output)
- [ ] Build HTML report generator
- [ ] Add CLI table output
- [ ] Format results clearly
- [ ] Test output quality

## Sunday Morning (Polish)
- [ ] Add error handling
- [ ] Handle API rate limits
- [ ] Performance optimization
- [ ] Code cleanup

## Sunday Afternoon (Final)
- [ ] Final testing
- [ ] Deploy to production
- [ ] Create documentation
- [ ] Share with community
```

---

## docs/activity.md

```
# Activity Log - audit-toolkit

## 2025-10-19 - 11:00am

**Completed:** Project setup complete. Repo created, team synced, tools installed.
**Why:** Need clear foundation before building
**Next:** Start core audit logic
**Challenges:** None yet!
**Learned:** GitHub API v3 vs v4 - going with v4 (GraphQL)

## 2025-10-19 - 2:00pm

**Completed:** GitHub API connection working. Can fetch repo metadata.
**Why:** Core dependency - everything else builds on this
**Next:** Quality scoring algorithm
**Challenges:** Rate limiting - added backoff strategy
**Time:** 3 hours
**Learned:** GitHub's GraphQL is powerful but has learning curve

## 2025-10-19 - 5:00pm

**Completed:** Scoring algorithm complete. Tests passing. 89/100 accuracy vs manual assessment.
**Why:** This is the value - the scoring needs to be right
**Next:** HTML report generation
**Challenges:** Edge cases (new repos, abandoned repos) - handled them
**Time:** 2 hours

## 2025-10-19 - 8:00pm

**Completed:** HTML report generation working. Beautiful output.
**Why:** Users need to see results clearly
**Next:** CLI interface and deployment
**Challenges:** CSS styling - got help from Claude
**Time:** 2 hours

## 2025-10-20 - 10:00am

**Completed:** CLI working. Full end-to-end flow complete.
**Why:** Need to verify full pipeline works
**Next:** Testing and error handling
**Challenges:** None - building momentum!
**Time:** 1.5 hours

## 2025-10-20 - 2:00pm

**Completed:** Comprehensive error handling. Tested 50+ edge cases.
**Why:** Production code must handle anything
**Next:** Final polish
**Time:** 2 hours

## 2025-10-20 - 4:00pm

**Completed:** Deployed to npm. Documentation complete. Project shipped!
**Why:** Time to launch
**Challenges:** Npm publishing process - smoother than expected
**Time:** 1.5 hours
**Result:** 100+ downloads in first hour. Amazing!
```

---

## PROMPT_FOR_CLAUDE.md

```
# Context for Claude - audit-toolkit

## Project Overview
I'm building audit-toolkit, a tool that audits GitHub projects for quality metrics.

## Problem
Developers need a quick way to evaluate if a GitHub project is well-maintained and worth using.

## Solution
- User provides GitHub repo URL
- Tool analyzes repository
- Returns quality score (0-100) with breakdown
- Provides actionable recommendations

## Tech Stack
- Language: Python 3.9+
- GitHub API: v4 (GraphQL)
- Output: HTML + CLI
- Deployment: npm/pip

## Current Phase
I'm building the core audit logic. Specifically, I need help with:

1. GitHub GraphQL queries to get:
   - Repository metadata
   - README presence and size
   - LICENSE type
   - CONTRIBUTING guide presence
   - Recent commit history
   - PR/issue responsiveness

2. Scoring algorithm:
   - Documentation (20 pts): README quality, license, contributing guide
   - Maintenance (30 pts): Recent commits, active issues
   - Community (25 pts): PR/issue response time, contributors
   - Code Organization (25 pts): File structure, tests presence

3. Output generation:
   - HTML report with visual score
   - CLI table showing breakdown
   - Recommendations for improvement

## Questions for You
1. What's the best GraphQL query structure for this?
2. How should I weight the scoring components?
3. What's the fastest way to generate HTML reports?

Let's build this!
```

---

## PROMPT_FOR_CHATGPT.md

```
# Context for ChatGPT - audit-toolkit

## What We're Building
A GitHub project audit tool that scores projects 0-100 on quality metrics.

## The Idea
Users provide a GitHub repo URL and get a quality score with breakdown.

## Tech
Python + GitHub API v4 + HTML output

## Current Task
Implement the core scoring logic.

## What We Need
1. GitHub API queries (GraphQL) to get repository data
2. Scoring algorithm that calculates quality score
3. Nice HTML report generation

## Show Me
- Complete working Python code
- Sample output for a well-known project (e.g., django/django)
- How to handle rate limiting

## Questions
1. What's the best way to score repositories?
2. Any libraries that make HTML generation easier?
3. How do we handle private repos?

Build it step-by-step so I can understand each part.
```

---

## html/audit-report.html

```html
<!DOCTYPE html>
<html>
<head>
    <title>Audit Report</title>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI"; margin: 20px; }
        .header { text-align: center; margin-bottom: 30px; }
        .score { font-size: 72px; font-weight: bold; color: #00b4a0; }
        .score-ring { width: 200px; height: 200px; border-radius: 50%; border: 8px solid #00b4a0; display: flex; align-items: center; justify-content: center; margin: 0 auto; }
        .metrics { display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; margin: 30px 0; }
        .metric { padding: 15px; background: #f5f5f5; border-left: 4px solid #00b4a0; }
        .metric-title { font-weight: bold; font-size: 14px; color: #666; }
        .metric-score { font-size: 28px; color: #00b4a0; margin-top: 10px; }
        .recommendations { margin-top: 30px; padding: 20px; background: #f0f8ff; border-radius: 4px; }
    </style>
</head>
<body>
    <div class="header">
        <h1>Audit Report</h1>
        <p class="repo-name">Repository: django/django</p>
        <div class="score-ring">
            <div class="score">86</div>
        </div>
        <p style="color: #00b4a0; font-size: 18px; margin-top: 20px;">Shipping Ready ✓</p>
    </div>
    
    <div class="metrics">
        <div class="metric">
            <div class="metric-title">Documentation</div>
            <div class="metric-score">18/20</div>
        </div>
        <div class="metric">
            <div class="metric-title">Maintenance</div>
            <div class="metric-score">28/30</div>
        </div>
        <div class="metric">
            <div class="metric-title">Community</div>
            <div class="metric-score">22/25</div>
        </div>
        <div class="metric">
            <div class="metric-title">Code Quality</div>
            <div class="metric-score">18/25</div>
        </div>
    </div>

    <div class="recommendations">
        <h3>Recommendations</h3>
        <ul>
            <li>✓ Good README with comprehensive documentation</li>
            <li>✓ Active maintenance - commits last week</li>
            <li>✓ Strong community - many contributors</li>
            <li>→ Consider adding CONTRIBUTING guide (not found)</li>
            <li>→ Response time for issues is 3 days - could be faster</li>
        </ul>
    </div>
</body>
</html>
```

---

## WALKTHROUGH.md

```
# How to Build audit-toolkit (Step-by-Step)

## Friday Evening (2 hours)

### Step 1: Project Setup
1. Create GitHub repo
2. Clone locally
3. Create Clew Forge structure (REQUIREMENTS, tasks/todo, etc)
4. Set up Python environment
5. Make first commit

**Commit:** `Init: Project setup`

### Step 2: Define Requirements
1. Fill REQUIREMENTS.md
2. Fill MVP_SCOPE.md
3. List tasks in tasks/todo.md
4. Share with Claude/ChatGPT
5. Get feedback

**Commit:** `Docs: Requirements and scope defined`

---

## Saturday (14 hours)

### 9am - 12pm: Core Logic (3 hours)

1. **GitHub API Setup**
   - Get GitHub token
   - Test API connection
   - Ask Claude/ChatGPT to help with GraphQL queries

2. **Build Audit Functions**
   - `fetch_repository_data()` - Get repo metadata
   - `check_documentation()` - README, LICENSE, etc
   - `analyze_maintenance()` - Recent commits, branches
   - `evaluate_community()` - Issues, PRs, contributors

**Commit:** `Feature: Core audit logic working`

### 12pm - 1pm: Lunch

### 1pm - 5pm: Scoring Algorithm (4 hours)

1. **Design Scoring System**
   - Documentation: 20 points
   - Maintenance: 30 points
   - Community: 25 points
   - Code Quality: 25 points

2. **Implement Scoring**
   - Build scoring functions
   - Test against known projects
   - Adjust weights based on results
   - Aim for 90%+ accuracy

**Commit:** `Feature: Scoring algorithm complete`

### 5pm - 8pm: Output Generation (3 hours)

1. **HTML Report**
   - Beautiful visual score display
   - Breakdown by category
   - Recommendations
   - Responsive design

2. **CLI Output**
   - Clean table format
   - Summary stats
   - Easy to read

3. **Test Output**
   - Run against real projects
   - Verify results make sense
   - Get feedback from Claude

**Commit:** `Feature: Output generation complete`

### 8pm - 9pm: End-to-End Test (1 hour)

- Full pipeline test: URL → Analysis → Report
- Error handling for edge cases
- Rate limit handling

**Commit:** `Feature: End-to-end pipeline working`

---

## Sunday (5 hours)

### 10am - 12pm: Polish & Error Handling (2 hours)

- Add comprehensive error handling
- Test edge cases (new repos, abandoned repos, private repos)
- Add helpful error messages
- Handle rate limiting gracefully

**Commit:** `Fix: Robust error handling and edge cases`

### 12pm - 1pm: Lunch

### 1pm - 2pm: Documentation (1 hour)

- Write README for audit-toolkit
- Document API usage
- Add examples
- Update main project docs

**Commit:** `Docs: Complete documentation`

### 2pm - 3pm: Deployment (1 hour)

- Create releases
- Package for distribution
- Deploy to npm/pip
- Test installation

**Commit:** `Release: v1.0.0 - First production release`

---

## What You Learned

- How to use Clew Forge (you just did!)
- How to structure a project
- How to work with Claude/ChatGPT as a co-pilot
- How to ship something real in 48 hours
- How to track progress effectively

## Next Steps

- Get feedback from users
- Track usage (audit-toolkit will help you!)
- Plan V1.1 features
- Invite community contributions

---

## Pro Tips from Building This

1. **Start Simple** - Get basic version working first
2. **Build End-to-End Early** - Test the full pipeline ASAP
3. **Log Your Progress** - update activity.md daily
4. **Communicate with Your AI** - Claude/ChatGPT are best when they understand your project
5. **Ship Fast** - Done is better than perfect
```

---

## Why This Example Works

✅ **Real problem** - Developers actually want this
✅ **Complete structure** - Shows all Clew Forge parts
✅ **Realistic timeline** - 48 hours for V1
✅ **Meta** - Uses Clew Forge to audit projects
✅ **Scalable** - Clear V1.1, V1.2, V2.0 paths
✅ **Beginner-friendly** - Easy to understand and adapt

## How to Use This Example

1. **Study the structure** - See how all pieces fit together
2. **Copy templates** - Use these files as starting points for your own project
3. **Follow the walkthrough** - See how it actually gets built
4. **Adapt for your project** - Change the problem domain, keep the structure
5. **Reference it** - Use as proof that the system works

---

**This is a complete, production-ready example that proves Clew Forge works.** 🚀
