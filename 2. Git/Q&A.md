# Git Interview Questions and Tasks

## Git Interview Questions

1. **Explain the Git Internal Architecture. How Does Git Store Data?**
   - **Git Objects**: Git stores data in objects, including blobs, trees, commits, and tags:
     - **Blobs**: Store file data.
     - **Trees**: Store directory structure and references to blobs and other trees.
     - **Commits**: Store metadata, a pointer to a tree object (snapshot of the project), and references to parent commits.
     - **Tags**: Store references to commits, often used to mark release points.
   - **Storage**: These objects are stored in the `.git/objects` directory as compressed files. Git uses SHA-1 hashes to uniquely identify and store these objects.

2. **Difference Between `git merge` and `git rebase`. When Would You Use One Over the Other?**
   - **Git Merge**: Combines histories of two branches, preserving the commit history of both branches. Use it to integrate changes from different branches and maintain the complete history.
   - **Git Rebase**: Re-applies commits from one branch onto another, creating a linear history. Use it to keep a clean commit history and simplify review processes.
   - **Pitfalls**: Rebasing rewrites commit history, which can be problematic if others are using the same branch. Merging can create complex histories with merge commits.

3. **How Does `git cherry-pick` Work, and In What Scenarios Would You Use It?**
   - **Git Cherry-Pick**: Applies the changes from a specific commit to your current branch. Use it to apply particular changes from one branch to another without merging the entire branch.
   - **Use Cases**: Selectively bringing bug fixes or features from one branch to another, especially in cases where a full merge is unnecessary.

4. **What Are Git Hooks and How Can They Be Used in a CI/CD Pipeline?**
   - **Git Hooks**: Scripts that run automatically at certain points in the Git workflow, such as before a commit or after a push. 
     - **Client-Side Hooks**: Examples include `pre-commit` (run before a commit) and `pre-push` (run before pushing).
     - **Server-Side Hooks**: Examples include `pre-receive` (run before accepting a push) and `post-receive` (run after a push is received).
   - **CI/CD Pipeline**: Automate tasks such as code quality checks, linting, and formatting before allowing commits or during deployment.

5. **Can You Explain the Process of a `git bisect` and How You Would Use It to Identify a Commit That Introduced a Bug?**
   - **Git Bisect**: A binary search tool to find the commit that introduced a bug.
     - **Steps**:
       1. Start bisect: `git bisect start`
       2. Mark the current commit as bad: `git bisect bad`
       3. Mark a known good commit: `git bisect good <commit>`
       4. Git will check out a commit between the good and bad commits. Test this commit.
       5. Mark the commit as good or bad: `git bisect good` or `git bisect bad`
       6. Repeat until the offending commit is found.
   - **Use**: Efficiently isolate problematic commits in large codebases.

6. **What is a 'Detached HEAD' State in Git and How Do You Resolve It?**
   - **Detached HEAD**: Occurs when HEAD points to a specific commit rather than a branch, often after checking out a commit directly.
   - **Resolution**:
     - To reattach HEAD to a branch: `git checkout <branch>`
     - To create a new branch from the detached state: `git checkout -b <new-branch>`

7. **Describe How You Would Handle a Large Binary File in a Git Repository. What Tools or Strategies Would You Use?**
   - **Git LFS (Large File Storage)**: An extension to handle large files by storing them outside the main repository and replacing them with pointers in the repository.
   - **Best Practices**: Use Git LFS for large files, keep the repository clean of unnecessary large files, and consider alternative storage solutions for very large assets.

8. **What is the Purpose of the `.gitignore` File and How Does Git Determine Which Files to Ignore?**
   - **`.gitignore`**: Specifies files and directories Git should ignore.
   - **Syntax**: Includes patterns for file names or paths. For example, `*.log` ignores all `.log` files.
   - **Processing**: Git checks this file when determining which files to include or exclude from version control.

9. **How Do You Perform a 'Squash' of Commits, and What Are the Implications of Doing So?**
   - **Squash Commits**: Use interactive rebase to combine multiple commits into one.
     - Command: `git rebase -i HEAD~n` (where `n` is the number of commits to squash).
   - **Implications**: Squashing simplifies history but alters commit hashes, which can affect collaboration if the commits have been shared.

10. **What Are the Differences Between `git reset`, `git checkout`, and `git revert`?**
    - **`git reset`**: Moves the current branch pointer to a specific commit and can optionally modify the working directory and staging area. Use it to undo commits or unstage files.
    - **`git checkout`**: Switches branches or restores files. Use it to navigate between branches or to undo changes in the working directory.
    - **`git revert`**: Creates a new commit that undoes changes made by a previous commit. Use it to safely undo changes in a shared repository.

11. **Describe the Process and Tools Involved in Migrating a Large Repository from SVN to Git.**
    - **Tools**: `git svn` or third-party tools like `svn2git`.
    - **Process**:
      1. Prepare the SVN repository and determine the desired Git structure.
      2. Use `git svn clone` to create a Git repository from SVN.
      3. Verify the repository and branches.
      4. Push the Git repository to a remote Git server.

12. **How Would You Handle a Situation Where a Developer Has Accidentally Pushed Sensitive Data to a Public Repository?**
    - **Steps**:
      1. Remove the sensitive data using `git filter-branch` or BFG Repo-Cleaner.
      2. Force push the cleaned history: `git push origin --force`
      3. Notify affected parties and review repository access and security.

13. **Explain How to Configure Git to Sign Commits and Tags with GPG. Why is This Important?**
    - **Configure GPG**:
      1. Generate a GPG key: `gpg --gen-key`
      2. Configure Git to use the key: `git config --global user.signingkey <key-id>`
      3. Enable commit signing: `git config --global commit.gpgSign true`
    - **Importance**: Signing commits and tags provides authenticity and integrity, ensuring that changes are verified and come from a trusted source.

14. **How Does Git Handle Line Endings, and What Issues Can Arise When Collaborating Across Different Operating Systems?**
    - **Line Endings**: Different operating systems use different line endings (LF for Unix/Linux, CRLF for Windows).
    - **Configuration**: Use `core.autocrlf` setting to manage line endings:
      - `true` for automatic conversion to LF on checkout and CRLF on commit.
      - `input` for automatic conversion to LF on commit but not on checkout.
      - `false` to disable conversion.
    - **Issues**: Inconsistent line endings can lead to merge conflicts and unnecessary changes in diffs.

15. **Explain the Concept of 'Reflog' in Git. How Can It Be Used to Recover Lost Commits?**
    - **Reflog**: Logs all changes to the tips of branches and HEAD, including commits and branch updates.
    - **Usage**:
      - View reflog: `git reflog`
      - Find the commit hash of lost changes.
      - Recover lost commits by checking out or resetting to the desired commit.

16. **What is the Significance of the 'Index' or 'Staging Area' in Git, and How Does It Differ from the Working Directory and Repository?**
    - **Index/Staging Area**: A snapshot of changes that will be included in the next commit.
    - **Working Directory**: The current state of files on your local machine.
    - **Repository**: The database of commits and history.
    - **Difference**: The index is an intermediary between the working directory and repository, allowing you to prepare changes before committing.

17. **Can You Explain What Happens Under the Hood When You Run `git gc`?**
    - **Git Garbage Collection**: Cleans up unnecessary files and optimizes the repository.
      - Compresses file objects into pack files.
      - Removes dangling commits and other unreachable objects.
      - Improves performance and reduces disk usage.

18. **How Would You Set Up a Git Repository to Automatically Enforce Code Quality Checks Before Allowing Commits?**
    - **Pre-Receive Hook**: Create a hook script that runs code quality tools and rejects commits that fail checks.
    - **Example**:
      - Create a `pre-receive` hook in `.git/hooks/pre-receive`.
      - Include
