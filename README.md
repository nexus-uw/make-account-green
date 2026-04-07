# Make Account Green

![Make Account Green](https://user-images.githubusercontent.com/3188890/187051752-e6203ce6-95e4-4e12-9a21-d056d07fdab7.png)

## Purpose

This repository aims to generate public activity for this GitHub account, effectively "gaming" the contributions graph. It serves as a demonstration of how contribution metrics can be manipulated.

## Why

Many systems can be manipulated, and this project serves as an example of how to exploit GitHub's contribution tracking. By automating public activity, we can demonstrate the impact of algorithm-driven metrics.

## How It Works

The project automates actions such as creating commits, opening issues, and submitting pull requests to generate visible contributions on the GitHub profile. This is achieved through GitHub Actions, which run workflows to execute the necessary commands.

## Installation

1. **Fork the Repository:**
   - Click on the “Fork” button at the top right corner of this page to create your own copy of the repository.

2. **Clone the Repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/make-account-green.git
   cd make-account-green
   ```

3. **Configure GitHub Actions:**
   - Ensure that GitHub Actions is enabled for your repository. You may need to create a workflow file in the `.github/workflows` directory to set up your automation.

## Usage

- After setting up the repository and GitHub Actions, the automation will run periodically to generate activity.

### Example Workflows

Here’s a simple example of how to set up a GitHub Actions workflow to automate commits:

```yaml
name: Generate Activity

on:
  schedule:
    - cron: '0 * * * *' # Runs every hour

jobs:
  generate-activity:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Create a dummy commit
        run: |
          echo "Auto-generated activity" >> activity.txt
          git config --local user.name "Your Name"
          git config --local user.email "you@example.com"
          git add activity.txt
          git commit -m "Auto-generated commit"
          git push
```

## 2022 Update

This project now runs on GitHub Actions, allowing for a more efficient and seamless automation process. This transition is a response to issues raised in the community, specifically issue [#4](https://github.com/nexus-uw/make-account-green/issues/4).

## Notes

- The idea for this project was inspired by [Zeke Sikelianos’ article](http://zeke.sikelianos.com/npm-and-github-automation-with-heroku/), which discusses GitHub and npm automation.





