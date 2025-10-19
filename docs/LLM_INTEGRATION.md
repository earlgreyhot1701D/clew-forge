# LLM Integration Guide

**Use Claude, ChatGPT, GitHub Copilot, or Google Vertex as your co-pilot.**

Clew Forge works with any LLM. This guide shows you how to integrate Claude, ChatGPT, GitHub Copilot, and Google Vertex into your workflow. Pick your LLM and let's build.

---

## Why Use an LLM?

### What It Does
Your LLM becomes a co-pilot:
- Handles boring, repetitive work
- Suggests architecture decisions
- Writes code faster
- Keeps your reasoning sharp
- Maintains project narrative

### The Pattern
1. You define what you're building (REQUIREMENTS.md)
2. You list your tasks (tasks/todo.md)
3. You tell your LLM your context
4. It suggests approach → You approve
5. It builds → You integrate
6. You log progress (docs/activity.md)
7. Repeat

---

## The Context Template

Before working with any LLM, copy this context template and customize it for your project:

```
# Project Context

## What We're Building
[From REQUIREMENTS.md: 1-2 sentences]

## Problem We're Solving
[Who has this problem? Why does it matter?]

## Users
[Who are they? What's their background?]

## Success Criteria
[How do we know it works?]

## Tech Stack
[Language, framework, database, deployment]

## Current Status
[What's done? What's next?]

## This Phase's Goal
[Specific feature or milestone]

## Here's the Todo
[Paste relevant items from tasks/todo.md]

## Key Decisions So Far
[Any architectural choices we've made?]

## Constraints
[Budget? Timeline? Technical limitations?]

---

Now let's build [specific task]. What's your suggestion?
```

---

## Claude (Claude Code, Claude API, web interface)

### Why Choose Claude?

**Strengths:**
- ✅ Best code quality and architecture reasoning
- ✅ Largest context window (reads entire projects)
- ✅ Claude Code for direct execution
- ✅ Best for complex decision-making

**Use for:** Architecture decisions, complex features, code quality

### Setup: Claude Code (Fastest for Coding)

**What it is:** Official Claude code execution environment

**Access:**
1. Go to https://claude.ai
2. Or use Claude API: https://docs.anthropic.com
3. Or use Claude Code in your terminal

### Step 1: Prepare Your Context

```bash
# In your project folder
cat docs/00_BOOTSTRAP/REQUIREMENTS.md
cat tasks/todo.md
cat docs/activity.md
```

### Step 2: Start Claude

Visit https://claude.ai or use Claude Code.

### Step 3: Paste Your Context

```
Here's my project context:

# Project: [Your Project Name]

## Problem
[Your problem statement]

## Users
[Your target users]

## Tech Stack
[Your tech]

## Current Task
I need to build: [specific feature]

Here's my full requirements:
[Paste REQUIREMENTS.md]

Here's my todo list:
[Paste relevant items]

What's the best approach?
```

### Step 4: Claude Suggests

Claude will provide:
- Implementation strategy
- Architecture recommendation
- Potential issues to watch
- Code skeleton or full solution

### Step 5: You Approve & Claude Builds

**You:** "That sounds good. Let's build it."

Claude builds complete, working code.

### Step 6: You Integrate

Copy code. Test locally. Commit.

```bash
git add .
git commit -m "Feature: X (Claude co-pilot)"
./scripts/log.sh "Built X with Claude - 45 min"
```

### Example: Building API Endpoint

**Your prompt to Claude:**

```
I'm building a tool discovery app. I need an API endpoint that:

1. Takes a search query parameter
2. Searches tools table by name and description
3. Returns top 10 results ranked by relevance
4. Returns JSON with id, name, description, score
5. Handles no-results case

Stack: Node.js + Express + PostgreSQL

Show me the endpoint code.
```

**Claude responds:**

```javascript
app.get('/api/search', async (req, res) => {
  const query = req.query.q;
  
  if (!query || query.length < 2) {
    return res.status(400).json({ error: 'Query too short' });
  }
  
  const results = await searchTools(query);
  res.json({ results });
});

async function searchTools(query) {
  const sql = `
    SELECT id, name, description,
      (position($1 in lower(name)) * 2 + 
       position($1 in lower(description))) as score
    FROM tools
    WHERE lower(name) LIKE $1 OR lower(description) LIKE $1
    ORDER BY score DESC
    LIMIT 10
  `;
  
  return await db.query(sql, [`%${query}%`]);
}
```

**You:** Test locally → Looks good → Integrate → Commit

### Pro Tips for Claude

**Tip 1: Be Specific About Constraints**
```
Build this endpoint in < 50 lines.
Use vanilla Node.js (no extra dependencies).
Make it work with PostgreSQL.
```

**Tip 2: Share Existing Code**
```
Here's my existing database layer:
[Paste code]

Can you use these functions?
```

**Tip 3: Ask for Testing**
```
Write unit tests for this function.
Include edge cases.
Use Jest.
```

**Tip 4: Request Explanation**
```
I don't understand this part: [code]
Can you explain it step-by-step?
```

---

## ChatGPT (web, API, or mobile)

### Why Choose ChatGPT?

**Strengths:**
- ✅ Very fast responses
- ✅ Code Interpreter can test code
- ✅ Great for quick iterations
- ✅ Easy web interface

**Use for:** Quick implementation, testing, documentation, brainstorming

### Setup: ChatGPT Web

**Access:** https://chat.openai.com

**You need:** ChatGPT Plus ($20/month) or free account

### Step 1: Create Custom GPT (Optional)

1. Log into ChatGPT
2. Click "Explore GPTs" → "Create a GPT"
3. Set these instructions:

```
You are a Clew Forge co-pilot helping developers ship fast.

Your job:
1. Help users plan their projects
2. Suggest implementation approaches
3. Build features quickly
4. Encourage activity logging
5. Prioritize shipping over perfection

When users ask for help:
- Ask about their tech stack
- Ask about constraints (time, complexity)
- Suggest the fastest approach
- Build working code first, optimize later

Always encourage users to log their progress in docs/activity.md
```

### Step 2: Start a Chat

Create a new chat with ChatGPT.

### Step 3: Paste Context

```
# Project Context

I'm building: [your project]

Problem: [your problem]
Users: [your users]
Stack: [your tech]

Current task: [what you're building]

Full requirements:
[Paste REQUIREMENTS.md]

Todo list:
[Paste relevant items]

What's the fastest way to build [specific feature]?
```

### Step 4: ChatGPT Suggests

ChatGPT suggests approach and potentially asks clarifying questions.

### Step 5: You Decide

**Option A:** "Build it"
**Option B:** "Try approach X instead"
**Option C:** "I need it to also handle Y"

### Step 6: ChatGPT Builds

ChatGPT provides implementation.

### Step 7: Integrate & Commit

```bash
# Copy code into project
git add .
git commit -m "Feature: [name]"
./scripts/log.sh "Implemented [feature] with ChatGPT"
```

### Example: Database Schema Review

**Your prompt:**

```
I'm building a tool discovery app.

Database tables:
- tools (id, name, description, category_id, created_at)
- categories (id, name)
- user_favorites (user_id, tool_id, added_at)

I also need to track:
- Tool ratings (1-5 stars)
- Number of times tool was viewed
- User who added the tool

How should I structure this? Show me the schema.
```

**ChatGPT responds:**

```sql
-- Tools table
CREATE TABLE tools (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  category_id INTEGER REFERENCES categories(id),
  created_by INTEGER REFERENCES users(id),
  rating_count INTEGER DEFAULT 0,
  rating_sum INTEGER DEFAULT 0,
  view_count INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

-- Ratings table
CREATE TABLE tool_ratings (
  id SERIAL PRIMARY KEY,
  tool_id INTEGER REFERENCES tools(id),
  user_id INTEGER REFERENCES users(id),
  rating INTEGER CHECK (rating >= 1 AND rating <= 5),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Rest of schema...
```

### Pro Tips for ChatGPT

**Tip 1: Use Code Interpreter**

```
Can you test this function?

Function:
[paste code]

Test cases:
- Input: "hello" → Expected: output X
- Input: "" → Expected: error
- Input: null → Expected: error
```

ChatGPT tests it for you!

**Tip 2: Ask for Multiple Approaches**

```
Show me 3 different ways to implement search.
Compare pros and cons.
Recommend which is best for a hackathon.
```

**Tip 3: Iterate Fast**

```
That's good, but I need it to also [requirement].
Can you adjust?
```

**Tip 4: Request Documentation**

```
Write clear docstrings for this module:
[paste code]

Also write a README section explaining how to use it.
```

---

## GitHub Copilot (VS Code, Visual Studio, Neovim)

### Why Choose Copilot?

**Strengths:**
- ✅ Built into your editor (no context switching)
- ✅ Real-time suggestions as you type
- ✅ Great for boilerplate and patterns
- ✅ Very fast

**Use for:** Writing code, boilerplate, patterns, autocomplete

### Setup: GitHub Copilot in VS Code

**Install:**
1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search "GitHub Copilot"
4. Click Install
5. Sign in with GitHub
6. Subscribe ($10/month or free if student)

### How Copilot Works

You type comments/code → Copilot suggests implementation → You accept/reject

### Step 1: Create a File

```bash
touch src/search.js
code src/search.js
```

### Step 2: Write Comments Describing What You Want

```javascript
// Search tools database
// Input: query string (required)
// Output: array of matching tools sorted by relevance
// Use exact match scoring, then fuzzy match
// Return top 10 results

function searchTools(query) {
  
}
```

### Step 3: Copilot Suggests

As you type (or press Ctrl+Enter for suggestion), Copilot shows implementation.

### Step 4: Accept or Modify

- **Tab:** Accept suggestion
- **Esc:** Reject
- **Ctrl+Enter:** See more options
- **Ctrl+Shift+;:** Explain code

### Step 5: Review & Test

Read the code. Test it. Adjust if needed.

### Example: Copilot Building Search Function

**You type:**
```javascript
// Find all tools matching query
// Score by name match first, then description match
// Return sorted by score descending, limited to top 10
// Handle empty query gracefully

function searchTools(query) {
```

**Copilot suggests:**
```javascript
function searchTools(query) {
  if (!query || query.length === 0) {
    return [];
  }

  const results = tools.map(tool => {
    let score = 0;
    
    // Name match is worth more points
    if (tool.name.toLowerCase().includes(query.toLowerCase())) {
      score += 10;
    }
    
    // Description match is worth fewer points
    if (tool.description.toLowerCase().includes(query.toLowerCase())) {
      score += 5;
    }
    
    return { ...tool, score };
  })
  .filter(tool => tool.score > 0)
  .sort((a, b) => b.score - a.score)
  .slice(0, 10);

  return results;
}
```

**You:** Press Tab to accept. Done!

### Pro Tips for Copilot

**Tip 1: Write Detailed Comments**
```javascript
// GOOD: Clear comments = better suggestions
// Calculate relevance score for a tool
// Score: +10 for name match, +5 for description
// Return zero if no match
function calculateScore(tool, query) {

// BAD: Generic comments = generic suggestions
// Calculate score
function calculateScore(tool, query) {
```

**Tip 2: Use Context Files**

Open related files before starting a new file. Copilot reads them for context.

**Tip 3: Handle Incomplete Suggestions**

If Copilot's suggestion is incomplete, keep typing. It will continue.

**Tip 4: Write Tests**

```javascript
// Test search function
test('searchTools returns matching tools', () => {
  // Copilot will help write test
});
```

Copilot can help write tests!

---

## Google Vertex AI (Google Cloud Console)

### Why Choose Vertex?

**Strengths:**
- ✅ Google Cloud native
- ✅ Powerful Gemini models
- ✅ Enterprise-grade
- ✅ Good for large-scale projects

**Use for:** Cloud-native projects, enterprise scale, Google Cloud integration

### Setup: Vertex AI in Google Cloud

**Prerequisites:**
- Google Cloud account
- Project created
- Vertex AI API enabled
- `gcloud` CLI installed

**Install SDK:**
```bash
pip install google-cloud-aiplatform
```

**Authenticate:**
```bash
gcloud auth login
gcloud config set project YOUR_PROJECT_ID
```

### Step 1: Create Python Script

Create `build_with_vertex.py`:

```python
import vertexai
from vertexai.generative_models import GenerativeModel

# Initialize Vertex AI
vertexai.init(
    project="YOUR_PROJECT_ID",
    location="us-central1"
)

# Initialize model
model = GenerativeModel("gemini-pro")

# Your project context
context = """
# My Project

## What I'm Building
[Your project name and description]

## Problem
[Problem statement]

## Users
[Target users]

## Tech Stack
[Language, frameworks, database]

## Current Task
I need to build: [specific feature]

## Requirements
[Paste REQUIREMENTS.md]

## Todo
[Paste relevant todo items]

## Constraints
[Any constraints: time, scope, tech, etc]

---

What's the best approach to [specific task]?
"""

# Get suggestion from Vertex AI
response = model.generate_content(context)
print(response.text)
```

### Step 2: Run It

```bash
python build_with_vertex.py
```

### Step 3: Review Vertex's Suggestion

Vertex AI suggests approach, implementation strategy, etc.

### Step 4: Use Suggestions

Implement the suggested approach. Test. Commit.

### Example: Complete Example

```python
import vertexai
from vertexai.generative_models import GenerativeModel, GenerationConfig

vertexai.init(project="my-project", location="us-central1")
model = GenerativeModel("gemini-pro")

# More control over response
config = GenerationConfig(
    temperature=0.2,  # More consistent
    top_p=0.8,
    max_output_tokens=2048,
)

prompt = """
Build a REST API endpoint that:
1. Accepts a search query
2. Queries PostgreSQL for matching tools
3. Returns JSON results

Tech: Node.js, Express, PostgreSQL

Show complete, production-ready code.
"""

response = model.generate_content(
    prompt,
    generation_config=config,
)

print(response.text)
```

### Pro Tips for Vertex

**Tip 1: Set Temperature for Control**
```python
# Temperature 0 = deterministic
# Temperature 1 = more creative
config = GenerationConfig(temperature=0.2)  # More consistent for code
```

**Tip 2: Stream Long Responses**
```python
for chunk in model.generate_content(prompt, stream=True):
    print(chunk.text, end="")
```

**Tip 3: Handle Errors Gracefully**
```python
try:
    response = model.generate_content(prompt)
    print(response.text)
except Exception as e:
    print(f"Error: {e}")
```

---

## Choosing Your LLM: Quick Reference

| LLM | Best For | Speed | Cost | Setup |
|-----|----------|-------|------|-------|
| **Claude** | Architecture, code quality, complex features | Medium | $20/mo or API | https://claude.ai |
| **ChatGPT** | Speed, iteration, documentation | Fast | $20/mo or free | https://chat.openai.com |
| **Copilot** | In-editor coding, boilerplate | Very Fast | $10/mo or free | VS Code extension |
| **Vertex** | Cloud-native, enterprise | Medium | Google Cloud pricing | Google Cloud console |

---

## The Complete Workflow

### Friday Evening: Setup (1 hour)
1. Clone Clew Forge
2. Fill REQUIREMENTS.md
3. Write tasks in tasks/todo.md
4. Set up your LLM choice
5. Make first commit

### Saturday: Build (12 hours)
For each task:
1. Tell LLM what you need
2. LLM suggests → You approve
3. LLM builds → You integrate
4. Commit: `git commit -m "Feature: X"`
5. Log: `./scripts/log.sh "Built X with [LLM]"`

### Saturday Evening: Deploy
1. Deploy to Vercel/Railway/Fly
2. Test live
3. Commit changes

### Sunday: Polish (5 hours)
1. Repeat build pattern
2. Final QA
3. Final deploy
4. Practice pitch

### Result
Professional hackathon project with clear activity log proving you shipped efficiently.

---

## Tips for Best Results

### Tip 1: Start Small
- Don't ask for entire project
- Build feature by feature
- Test after each feature
- Small commits

### Tip 2: Give Great Context
```
DON'T: "Build search"

DO: "Build search that:
- Takes query parameter
- Searches tools table by name + description
- Returns top 5 by relevance score
- Handles no-results case
- Returns JSON format"
```

### Tip 3: Review Code
- Read code before using
- Understand what it does
- Test locally first
- Don't blindly commit

### Tip 4: Update Activity Log
```bash
./scripts/log.sh "Built search with Claude - 30 min"
./scripts/log.sh "Deployed to Vercel - all tests pass"
./scripts/log.sh "Added error handling for edge cases"
```

Shows judges/investors you shipped intentionally.

### Tip 5: Use Different LLMs for Different Tasks
```
Architecture decisions → Claude (best reasoning)
Quick code → ChatGPT (fastest)
In-editor suggestions → Copilot (no context switch)
Code testing → ChatGPT Code Interpreter
```

### Tip 6: Iterate
```
You: Build search
LLM: [builds code]
You: Good, but I also need pagination
LLM: [adjusts code]
You: Perfect
```

---

## Troubleshooting

### LLM Code Doesn't Work
1. Show LLM the error message
2. LLM can usually fix it
3. If not, try different approach

### LLM Suggestions Are Generic
1. Give more specific context
2. Share existing code
3. Add constraints (< 100 lines, vanilla JS, etc)

### I'm Not Sure if Code Is Good
1. Ask LLM for explanation
2. Test locally first
3. Ask for alternative approaches
4. Get human review if unsure

### LLM Is Too Slow
1. Use ChatGPT (fastest)
2. Use Copilot (in-editor speed)
3. Ask for shorter responses

### Context Is Too Long
1. Only paste relevant sections
2. Use summaries instead of full files
3. Start fresh conversation if needed

---

## Resources

**Claude:**
- Web: https://claude.ai
- API: https://docs.anthropic.com
- Claude Code: https://claude.ai/projects

**ChatGPT:**
- Web: https://chat.openai.com
- API: https://platform.openai.com
- Code Interpreter: Built into ChatGPT Plus

**GitHub Copilot:**
- Extension: https://github.com/features/copilot
- Docs: https://docs.github.com/en/copilot
- Pricing: $10/month or free for students

**Google Vertex AI:**
- Console: https://console.cloud.google.com/vertex-ai
- Docs: https://cloud.google.com/vertex-ai/docs
- Models: Gemini, PaLM 2

---

## Next Steps

1. **Pick your LLM** (recommended: Claude for planning, ChatGPT for speed)
2. **Read setup** for your choice above
3. **Set it up** (takes 5 minutes)
4. **Start your first task** from tasks/todo.md
5. **Tell LLM your context** (use template above)
6. **Build together**
7. **Log progress** with `./scripts/log.sh`

**You've got a co-pilot now.** Build something amazing. 🚀
