# 🔄 CI/CD Day 1 — First GitHub Actions Pipeline

Started my CI/CD journey by building my first automated CI pipeline using **GitHub Actions**.

## 📚 What I Learned

* Continuous Integration (CI)
* Continuous Delivery vs Continuous Deployment
* CI/CD pipeline
* GitHub Actions
* Workflows, jobs and steps
* Runners
* Triggers
* YAML-based automation

---

## 🛠️ Tools Used

* Git
* GitHub
* GitHub Actions
* YAML
* Ubuntu Runner

---

## 🚀 Project Setup

### 1. Create project

```bash
cd C:\
mkdir cicd-day1
cd cicd-day1
```

### 2. Create application file

```bash
echo Hello from CI/CD > app.txt
type app.txt
```

### 3. Initialize Git

```bash
git init
git status
```

### 4. Add and commit the project

```bash
git add app.txt
git commit -m "Initial CI/CD project"
```

### 5. Connect local repository to GitHub

```bash
git branch -M main

git remote add origin https://github.com/sathvikamallarapu810-dotcom/cicd-day1.git
```

Verify:

```bash
git remote -v
```

### 6. Push to GitHub

```bash
git push -u origin main
```

---

# ⚙️ Create GitHub Actions Workflow

Create the workflow directory:

```bash
mkdir .github
mkdir .github\workflows
```

Create the workflow:

```bash
notepad .github\workflows\ci.yml
```

### `ci.yml`

```yaml
name: First CI Pipeline

on:
  push:
    branches:
      - main

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Run test
        run: |
          echo "Running CI test..."
          test -f app.txt
          echo "Test passed!"
```

---

## 📤 Commit and Push Workflow

```bash
git status

git add .github\workflows\ci.yml

git commit -m "Add first CI pipeline"

git push
```

---

# 🔄 CI Pipeline Flow

```text
Developer
    ↓
git push
    ↓
GitHub
    ↓
GitHub Actions
    ↓
Ubuntu Runner
    ↓
Checkout Code
    ↓
Run Test
    ↓
✅ Pipeline Success
```

---

# ✅ Result

* Created my first Git repository for CI/CD practice
* Connected local Git to GitHub
* Created my first GitHub Actions workflow
* Triggered the workflow using `git push`
* Successfully executed an automated test
* Verified the pipeline with a successful GitHub Actions run

## 🎯 Next Step

Build a more realistic CI pipeline with:

**Checkout → Build → Test → Docker Build → Docker Hub → Kubernetes**

**Learning step by step. Consistent and constant at work.**
