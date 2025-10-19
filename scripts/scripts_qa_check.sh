#!/bin/bash

# Clew Forge QA Check Script
# Runs pre-deployment quality assurance checks
# Usage: ./scripts/qa-check.sh

set -e

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Counters
PASSED=0
FAILED=0
WARNINGS=0

# Helper functions
check_pass() {
    echo -e "${GREEN}✅ PASS${NC}: $1"
    ((PASSED++))
}

check_fail() {
    echo -e "${RED}❌ FAIL${NC}: $1"
    ((FAILED++))
}

check_warn() {
    echo -e "${YELLOW}⚠️  WARN${NC}: $1"
    ((WARNINGS++))
}

echo -e "${BLUE}🔍 Clew Forge QA Checks${NC}"
echo "=========================="
echo ""

# Check 1: Required files exist
echo "📋 Checking required files..."
REQUIRED_FILES=(
    "README.md"
    "LICENSE.md"
    "GETTING_STARTED.md"
    "docs/00_BOOTSTRAP/REQUIREMENTS.md"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$file" ]; then
        check_pass "Found $file"
    else
        check_fail "Missing $file"
    fi
done

echo ""

# Check 2: Markdown formatting
echo "📝 Checking Markdown files..."
MARKDOWN_FILES=$(find . -name "*.md" -not -path "./node_modules/*" -not -path "./.git/*" 2>/dev/null)

for file in $MARKDOWN_FILES; do
    if grep -q "^#" "$file" 2>/dev/null; then
        check_pass "Valid Markdown: $file"
    else
        check_warn "No headers in: $file"
    fi
done

echo ""

# Check 3: Git status
echo "🔀 Checking Git status..."
if command -v git &> /dev/null && git rev-parse --git-dir > /dev/null 2>&1; then
    UNCOMMITTED=$(git status --short | wc -l)
    if [ "$UNCOMMITTED" -eq 0 ]; then
        check_pass "All changes committed"
    else
        check_warn "$UNCOMMITTED uncommitted changes"
    fi
else
    check_warn "Not a Git repository or Git not installed"
fi

echo ""

# Check 4: Activity log
echo "📊 Checking activity log..."
if [ -f "docs/02_EXECUTION/activity.md" ]; then
    ENTRIES=$(grep -c "^## " docs/02_EXECUTION/activity.md || true)
    if [ "$ENTRIES" -gt 0 ]; then
        check_pass "Activity log has $ENTRIES entries"
    else
        check_warn "Activity log exists but has no entries"
    fi
else
    check_warn "Activity log not found"
fi

echo ""

# Check 5: TODO items
echo "✅ Checking TODO items..."
if [ -f "tasks/todo.md" ]; then
    TOTAL_TODOS=$(grep -c "^- \[" tasks/todo.md || true)
    COMPLETED=$(grep -c "^- \[x\]" tasks/todo.md || true)
    if [ "$TOTAL_TODOS" -gt 0 ]; then
        check_pass "TODOs: $COMPLETED/$TOTAL_TODOS completed"
    else
        check_warn "No structured TODOs found"
    fi
else
    check_fail "Missing tasks/todo.md"
fi

echo ""

# Check 6: Scripts
echo "🔧 Checking scripts..."
if [ -d "scripts" ]; then
    SCRIPTS=$(find scripts -type f -executable 2>/dev/null | wc -l)
    if [ "$SCRIPTS" -gt 0 ]; then
        check_pass "Found $SCRIPTS executable scripts"
    else
        check_warn "No executable scripts found"
    fi
else
    check_warn "No scripts directory"
fi

echo ""

# Check 7: Links
echo "🔗 Checking internal links..."
BROKEN_LINKS=0
for file in $(find . -name "*.md" -not -path "./node_modules/*" -not -path "./.git/*" 2>/dev/null); do
    # Simple check for markdown links
    if grep -o '\[.*\](.*\.md)' "$file" 2>/dev/null | while read link; do
        ref=$(echo "$link" | sed -E 's/.*\((.*)\).*/\1/')
        if [ ! -f "$ref" ] 2>/dev/null; then
            ((BROKEN_LINKS++))
        fi
    done; then
        :
    fi
done

if [ "$BROKEN_LINKS" -eq 0 ]; then
    check_pass "No broken links detected"
else
    check_warn "$BROKEN_LINKS potential broken links"
fi

echo ""

# Check 8: Documentation completeness
echo "📚 Checking documentation..."
REQUIRED_DOCS=(
    "docs/00_BOOTSTRAP/REQUIREMENTS.md"
    "README.md"
    "GETTING_STARTED.md"
    "LLM_INTEGRATION.md"
)

for doc in "${REQUIRED_DOCS[@]}"; do
    if [ -f "$doc" ]; then
        WORDS=$(wc -w < "$doc" 2>/dev/null || echo 0)
        if [ "$WORDS" -gt 100 ]; then
            check_pass "Well-written: $doc ($WORDS words)"
        else
            check_warn "Short: $doc ($WORDS words)"
        fi
    fi
done

echo ""

# Check 9: Environment
echo "🌍 Checking environment..."
if command -v git &> /dev/null; then
    check_pass "Git installed"
else
    check_fail "Git not found"
fi

if command -v python3 &> /dev/null; then
    check_pass "Python 3 installed"
else
    check_warn "Python 3 not found"
fi

if command -v node &> /dev/null; then
    check_pass "Node.js installed"
else
    check_warn "Node.js not found"
fi

echo ""

# Summary
echo "=========================="
echo -e "${BLUE}📊 QA Summary${NC}"
echo "=========================="
echo -e "✅ Passed:  ${GREEN}$PASSED${NC}"
echo -e "⚠️  Warnings: ${YELLOW}$WARNINGS${NC}"
echo -e "❌ Failed:  ${RED}$FAILED${NC}"
echo ""

# Exit code
if [ "$FAILED" -eq 0 ]; then
    echo -e "${GREEN}✅ QA checks passed!${NC}"
    echo ""
    echo "Your project is ready to deploy."
    exit 0
else
    echo -e "${RED}❌ QA checks failed!${NC}"
    echo ""
    echo "Please fix the failures above before deploying."
    exit 1
fi
