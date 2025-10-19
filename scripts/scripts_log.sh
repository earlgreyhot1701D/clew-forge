#!/bin/bash

# Clew Forge Activity Logger
# Logs project progress to docs/activity.md with timestamps
# Usage: ./scripts/log.sh "What you just completed"

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if message is provided
if [ -z "$1" ]; then
    echo -e "${RED}❌ Error: No message provided${NC}"
    echo ""
    echo "Usage: ./scripts/log.sh \"What you completed\""
    echo ""
    echo "Examples:"
    echo "  ./scripts/log.sh \"Built search UI\""
    echo "  ./scripts/log.sh \"Fixed API endpoint - added error handling\""
    echo "  ./scripts/log.sh \"Deployed to Vercel - all tests pass\""
    exit 1
fi

# Define activity log file
ACTIVITY_FILE="docs/02_EXECUTION/activity.md"

# Create docs directory if it doesn't exist
mkdir -p "$(dirname "$ACTIVITY_FILE")"

# Get current date and time
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
DATE=$(date '+%Y-%m-%d')

# Get git info if available
if command -v git &> /dev/null && git rev-parse --git-dir > /dev/null 2>&1; then
    GIT_BRANCH=$(git branch --show-current 2>/dev/null || echo "unknown")
    GIT_COMMIT=$(git rev-parse --short HEAD 2>/dev/null || echo "unknown")
else
    GIT_BRANCH="unknown"
    GIT_COMMIT="unknown"
fi

# Create activity log entry
ENTRY="## $TIMESTAMP
- **What:** $1
- **Branch:** \`$GIT_BRANCH\`
- **Commit:** \`$GIT_COMMIT\`

"

# Initialize activity.md if it doesn't exist
if [ ! -f "$ACTIVITY_FILE" ]; then
    cat > "$ACTIVITY_FILE" << 'EOF'
# Activity Log

This file tracks what you built and when. Update it as you make progress.

Each entry shows:
- **What:** What you completed or learned
- **Branch:** Git branch you were on
- **Commit:** Git commit hash

This helps judges/investors see your thinking and progress.

---

EOF
fi

# Append entry to activity log
echo "$ENTRY" >> "$ACTIVITY_FILE"

# Display confirmation
echo -e "${GREEN}✅ Activity logged!${NC}"
echo ""
echo -e "${BLUE}Entry added to $ACTIVITY_FILE:${NC}"
echo "  Timestamp: $TIMESTAMP"
echo "  Message: $1"
echo "  Branch: $GIT_BRANCH"
echo "  Commit: $GIT_COMMIT"
echo ""
echo -e "${YELLOW}Tip: Commit your changes to make this entry permanent${NC}"
echo "  git add docs/02_EXECUTION/activity.md"
echo "  git commit -m \"Progress: $1\""

exit 0
