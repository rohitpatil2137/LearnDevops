
# Daily Use Git Commands with Examples

## 1. **Initialize a Git Repository**
```bash
git init
```
Initializes a new Git repository in the current directory.

## 2. **Clone a Repository**
```bash
git clone https://github.com/username/repository.git
```
Clones a remote repository to your local machine.

## 3. **Check the Status**
```bash
git status
```
Displays the state of the working directory and staging area.

## 4. **Add Files to Staging Area**
```bash
git add file.txt
```
Adds changes in a file to the staging area.
```bash
git add .
```
Adds all changes in the current directory to the staging area.

## 5. **Commit Changes**
```bash
git commit -m "Initial commit"
```
Commits the staged changes to the repository with a message.

## 6. **View Commit History**
```bash
git log
```
Displays the commit history for the repository.

## 7. **Create a New Branch**
```bash
git branch feature-branch
```
Creates a new branch named `feature-branch`.

## 8. **Switch Branches**
```bash
git checkout feature-branch
```
Switches to the `feature-branch`.

## 9. **Merge Branches**
```bash
git merge feature-branch
```
Merges the `feature-branch` into the current branch.

## 10. **Rebase Branches**
```bash
git rebase main
```
Reapplies commits from the current branch on top of the `main` branch.

## 11. **Push Changes to Remote Repository**
```bash
git push origin feature-branch
```
Pushes commits from your local `feature-branch` to the remote repository.

## 12. **Pull Changes from Remote Repository**
```bash
git pull origin main
```
Fetches and merges changes from the `main` branch on the remote repository to your local branch.

## 13. **Stash Changes**
```bash
git stash
```
Temporarily saves your changes and cleans the working directory.

## 14. **Apply Stashed Changes**
```bash
git stash pop
```
Applies the most recently stashed changes and removes it from the stash list.

## 15. **View Remote URLs**
```bash
git remote -v
```
Displays the URLs of the remote repositories.

## 16. **Add Remote Repository**
```bash
git remote add origin https://github.com/username/repository.git
```
Adds a new remote repository with the specified URL.

## 17. **Reset to Previous Commit**
```bash
git reset --hard 123abc
```
Resets the working directory to the state of the commit with hash `123abc`, discarding all changes after it.

## 18. **Remove a File from Git Tracking**
```bash
git rm --cached file.txt
```
Removes `file.txt` from the staging area and stops tracking it.

## 19. **Show Changes**
```bash
git diff
```
Displays changes between the working directory and the staging area.

## 20. **View Commit History as Graph**
```bash
git log --oneline --graph --decorate --all
```
Displays the commit history in a graphical representation.