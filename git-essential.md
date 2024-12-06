# Ultimate Git Notes: From Beginner to Advanced

## Table of Contents

- [Setting Up Git](#setting-up-git)
- [Initializing a Repository](#initializing-a-repository)
- [Basic Git Workflow](#basic-git-workflow)
  - [Git Status](#git-status)
  - [Git Add](#git-add)
  - [Git Commit](#git-commit)
  - [Git Push](#git-push)
  - [Git Pull](#git-pull)
  - [Git Fetch](#git-fetch)
- [Branching and Merging](#branching-and-merging)
  - [Git Branch](#git-branch)
  - [Git Merge](#git-merge)
  - [Git Rebase](#git-rebase)
- [Advanced Git Commands](#advanced-git-commands)
  - [Git Reflog](#git-reflog)
  - [Git Log](#git-log)
  - [Git Reset](#git-reset)
  - [Git Cherry-pick](#git-cherry-pick)
  - [Undoing Changes](#undoing-changes)
- [Branching Strategies](#branching-strategies)
- [Best Practices](#best-practices)
- [Troubleshooting](#troubleshooting)
  - [Handling Diverged Branches](#handling-diverged-branches)
  - [Resolving Merge Conflicts](#resolving-merge-conflicts)

---

## Setting Up Git

1. **Configure Git with your username and email:**
   ```bash
   git config --global user.name "YourName"
   git config --global user.email "YourEmail@example.com"
   ```
2. **Generate and add an SSH key to your GitHub account:**
   ```bash
   ssh-keygen
   ssh -T git@github.com  # Test authentication
   ```

---

## Initializing a Repository

1. **Create a new Git repository:**
   ```bash
   git init
   ```
2. **Add a remote repository:**
   ```bash
   git remote add origin <remote-repository-url>
   ```

---

## Basic Git Workflow

### Git Status

Shows the status of files in your working directory and staging area.

```bash
git status
```

### Git Add

Adds files to the staging area for commit.

```bash
git add <filename>
git add *.js # Add files with a specific extension
git add .   # Stage all changes
git add -p  # Stage interactively
```

### Git Commit

Records changes to the repository.

```bash
git commit -m "Your commit message"
git commit -am "Add and commit message" # Add and commit in one command
git commit --amend # Amend the last commit

# Commit with a detailed description
git commit -m "Add user authentication feature" -m "- Implement login/logout functionality
- Add password hashing
- Create user session management
- Add remember me option
- Update tests for new features"
```

### Git Push

Uploads local repository content to a remote repository.

```bash
git push # Push to default remote (origin) and branch
git push origin main # Push to specific remote and branch
git push -f origin main # Force push (use with caution!)
git push --all # Push all branches
```

### Git Pull

Fetches and integrates changes from a remote repository.

```bash
git pull # Pull from default remote (origin) and branch
git pull origin <branch-name> # Pull from a specific remote and branch
git pull --rebase # Rebase instead of merge
```

### Git Fetch

Download changes from remote repository without merging:

```bash
git fetch --all # Fetch from all remotes
git fetch origin # Fetch from a specific remote
git fetch origin feature-branch # Fetch a specific branch
git fetch -p # Fetch and prune deleted remote branches
```

---

## Branching and Merging

### Git Branch

List, create, or delete branches:

```bash
git branch
git branch <branch-name>  # Create a new branch
git branch -d <branch-name>  # Delete a branch
git branch -m <new-branch-name>  # Rename a branch
git checkout -b <branch-name>  # Create and switch to a new branch
```

### Git Merge

Integrate changes from another branch:

```bash
git checkout main # Switch to the main branch
git merge <branch-name> # Merge changes from another branch
```

### Git Rebase

Reapplies commits on top of another base.

```bash
git rebase -i HEAD~3 # Starting rebase the last 3 commits interactively
git rebase --continue # Continue the rebase after resolving conflicts
git rebase --abort # Abort the rebase and return to the original branch
git rebase --skip # Skip the current commit and continue
```

---

## Advanced Git Commands

### Git Reflog

View a log of changes to the HEAD:

```bash
git reflog
```

### Git Log

View commit history:

```bash
git log
git log --oneline # Compact log
git log --oneline --graph --decorate # Compact log with graph and decorations
git log --author="username" # Show commits by author
git log --since="2 weeks ago" --until="1 day ago" # Show commits in date range
```

### Git Reset

Undo changes:

```bash
git reset --soft HEAD~1  # Keep changes staged
git reset --mixed HEAD~1  # Unstage changes
git reset --hard HEAD~1  # Discard changes
git reset --hard origin/main  # Reset to remote main branch
git reset --hard <commit-hash>  # Reset to a specific commit
git reset --hard HEAD@{1}  # Reset to a previous state from reflog
```

### Git Cherry-pick

Apply specific commits from another branch:

```bash
git cherry-pick <commit-hash> # Apply a commit
```

### Undoing Changes

Revert a commit:

```bash
git revert <commit-hash> # Create a new commit to undo changes of a specific commit
```

Remove commits:

```bash
git reset <commit-hash> # Move HEAD to a previous commit
git push origin <branch-name> --force # Force push to update remote
```

Update a specific commit **Example:**

```bash
$ git reflog
7a9b2c3 HEAD@{0}: commit: Add payment integration
5d6e8f9 HEAD@{1}: commit: Add user authentication
8d5e7f9 HEAD@{2}: commit: Add user session management
7a9b2c3 HEAD@{3}: commit: Initial commit


$ git rebase -i HEAD~3
# In editor, change:
pick 8d5e7f9 Add user session management
edit 5d6e8f9 Add user authentication #changed
pick 7a9b2c3 Add payment integration


# After making changes:
$ git add src/auth.js
$ git commit --amend
$ git rebase --continue
Successfully rebased and updated refs/heads/main.
```

---

## Common Branch Types

- `main`: Stable production codebase
- `dev`: Primary development branch
- `stage`: Testing environment
- `prod`: Production-ready code
- `setup`: Project configuration
- `chore`: Non-functional updates
- `bugfix`: Development bug fixes
- `hotfix`: Urgent production fixes
- `release`: New release preparation

---

## Commit Message Guidelines

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting changes
- `refactor`: Code restructuring
- `test`: Test modifications
- `chore`: Miscellaneous tasks

## Best Practices

1. Commit frequently and write descriptive messages.
2. Use branches for features and bug fixes.
3. Pull before pushing to avoid conflicts
4. Avoid force pushes on shared branches.
5. Use interactive rebase to clean up local history
6. Use `.gitignore` to exclude unnecessary files.

## Troubleshooting

### Handling Diverged Branches

A diverged branch occurs when branches develop independently after sharing a common commit history.

### Resolving Merge Conflicts

1. Identify conflicting files
2. Edit files manually
3. Stage resolved files
4. Complete the merge or rebase

## 10. Additional Tips

- Always use descriptive commit messages
- Leverage Git hooks for automation
- Learn and use Git aliases
- Understand the difference between `git fetch` and `git pull`

---

This Markdown file serves as a quick reference to mastering Git commands for all levels. Happy coding!
