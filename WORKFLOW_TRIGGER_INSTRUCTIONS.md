# How to Manually Trigger the PAC-MAN Contribution Graph Workflow

The "Generate contribution graph" workflow has been configured with manual trigger capability. Follow these steps to regenerate the SVG files with the updated configuration:

## Steps to Trigger the Workflow

1. **Navigate to the Actions tab**
   - Go to: https://github.com/leksialevin7700/leksialevin7700/actions

2. **Find the "Generate contribution graph" workflow**
   - Click on "Generate contribution graph" in the left sidebar
   - Or use this direct link: https://github.com/leksialevin7700/leksialevin7700/actions/workflows/snk.yml

3. **Click "Run workflow"**
   - Look for the "Run workflow" button on the right side
   - Click it to open the workflow dispatch dialog
   - Select the branch (typically `main`)
   - Click the green "Run workflow" button to confirm

4. **Wait for the workflow to complete**
   - The workflow will appear in the runs list
   - Click on the run to see its progress
   - Wait for all steps to complete (usually takes 1-2 minutes)

5. **Verify the generated files**
   - Once complete, the new SVG files will be committed to the repository:
     - `output/pacman-contribution-graph.svg` (light mode with blue contribution dots)
     - `output/pacman-contribution-graph-dark.svg` (dark mode with green contribution dots)

## What the Workflow Does

The workflow uses the updated configuration to:
- Generate a PAC-MAN style contribution graph
- Show the snake moving across a **highlighted trail** of contributions
- Instead of consuming the contributions, they remain visible as colored dots
- Creates both light and dark theme versions

## Automatic Runs

The workflow also runs automatically:
- **Daily at midnight (UTC)** via the cron schedule: `0 0 * * *`

## Workflow Details

- **Workflow ID**: 229947145
- **File**: `.github/workflows/snk.yml`
- **Action**: Uses Platane/snk@v3
- **Configuration**: Custom color palettes for both light and dark themes
