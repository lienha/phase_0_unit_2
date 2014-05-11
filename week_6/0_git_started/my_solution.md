## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
Adds files changes in your working directory to your index.

#### branch
Lists existing branches.

#### checkout
Checks out a different branch – switches branches by updating the index, working tree, and HEAD to reflect the chosen branch. Example: git checkout newbranch

#### clone
Makes a Git repository copy from a remote source. Also adds the original location as a remote so you can fetch from it again and push to it if you have permissions.

#### commit
Takes all of the changes written in the index, creates a new commit object pointing to it and sets the branch to point to that new commit. Examples: git commit -m ‘committing added changes’ git commit -a -m ‘committing all changes, equals to git add and git commit’

#### fetch
Fetches all the objects from the remote repository that are not present in the local one. Example: git fetch origin

#### log
Shows a listing of commits on a branch including the corresponding details.

#### merge
Merges one or more branches into your current branch and automatically creates a new commit if there are no conflicts. Example: git merge newbranchversion

#### pull
Fetches the files from the remote repository and merges it with your local one. This command is equal to the git fetch and the git merge sequence. Example: git pull origin

#### push
Pushes all the modified local objects to the remote repository and advances its branches. 

#### reset
Pushes all the modified local objects to the remote repository and advances its branches. 

#### rm
Removes files from your index and your working directory so they will not be tracked. Example: git rm filename

#### status
Shows you the status of files in the index versus the working directory. It will list out files that are untracked (only in your working directory), modified (tracked but not yet updated in your index), and staged (added to your index and ready for committing).

## Release 4: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

## Release 5: Reflection
I started an upstream at the beginning of unit 2. It was nice to be able to fetch changes when the master
was updated every week.