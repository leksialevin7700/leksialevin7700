#!/bin/bash

# Script to trigger the PAC-MAN contribution graph workflow
# This requires GitHub CLI (gh) to be installed and authenticated

WORKFLOW_NAME="Generate contribution graph"
WORKFLOW_FILE="snk.yml"
REPO="leksialevin7700/leksialevin7700"
BRANCH="${1:-main}"

echo "🎮 Triggering PAC-MAN Contribution Graph Workflow"
echo "=================================================="
echo "Repository: $REPO"
echo "Workflow: $WORKFLOW_NAME"
echo "Branch: $BRANCH"
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ Error: GitHub CLI (gh) is not installed."
    echo "Please install it from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Error: Not authenticated with GitHub CLI."
    echo "Please run: gh auth login"
    exit 1
fi

# Trigger the workflow
echo "Triggering workflow..."
if gh workflow run "$WORKFLOW_FILE" --repo "$REPO" --ref "$BRANCH"; then
    echo ""
    echo "✅ Workflow triggered successfully!"
    echo ""
    echo "View the workflow run at:"
    echo "https://github.com/$REPO/actions/workflows/$WORKFLOW_FILE"
    echo ""
    echo "Or check the latest run with:"
    echo "  gh run list --workflow='$WORKFLOW_NAME' --repo $REPO --limit 1"
else
    echo ""
    echo "❌ Failed to trigger workflow."
    echo "Please check your permissions and try again."
    exit 1
fi
