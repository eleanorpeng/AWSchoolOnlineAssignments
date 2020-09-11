# AWSchoolOnlineAssignments
-week1 <br />
&nbsp; &nbsp; &nbsp; -[GitHub Commands](#github-commands) <br />
&nbsp; &nbsp; &nbsp; -[Establish & Upload Local File to GitHub](#establish-and-upload-local-file-to-github) <br />
&nbsp; &nbsp; &nbsp; -[Establish GitHub Repo](#establish-github-repo) <br />
&nbsp; &nbsp; &nbsp; -[Remote Assignment 1 Swift Playground](https://github.com/eleanorpeng/AWSchoolOnlineAssignments/tree/master/Eleanor_RemoteAssignment1.playground) <br />
-week2 <br />
-week3 <br />
-week4 <br />

---

## GitHub Commands
* git status
  * Def: See status of the working tree
  * Use case: Use this command when you’ve made changes to the files and want to see whether the changes are ready to be committed. If not, git status also allows you to view untracked, staged, or unstaged files.
* git add
  * Def: Add changes you’ve made to the files in the working directory to the staging area
  * Use case: Use this command when you think the changes you made to the files are ready to be committed.
* git commit
  * Def: Commit is the state of the tree, or directory, at a particular time. Git commit essentially allows you to record your current work to the repo. In short, this is similar to a “saving point.”
  * Use case: You want to record the current version of the work locally, which can be referred back to later on. The description of the commit can be entered in different ways, either through text editor or within the same line of the command depending on your option.
* git log 
  * Def: See the previous commits you made to the repo
  * Use case: You want to check the previous commits that you’ve made. By using different options, you can decide whether to view all the changes that you’ve made to the repo with --all, or just the commits of the current branch with no additional option. Other options include --graph, --decorate, --oneline, etc...
* git push [Repo_name][Branch_name]
  * Def: Publish the local branch commits to the remote branch
  * Use case: This command is used when you’re certain that you want to share the local commits with the remote repo, which can be shared with the people that you’re collaborating with. Similarly, there are options you can use in push to determine which branch you’re pushing. For instance, git push --all allows you to push all the branches.
* git remote -v
  * Def: List out all the repos that are associated with the current repo
  * Use case: You want to check the URLs of all the repos that are associated with the current local repo.
* git branch 
  * Def: A branch is simply a label associated with a particular commit, and it’s implemented as a file containing a SHA1 hash, which is used as a unique reference to each commit. The command git branch allows you to check which branch you’re currently in.
  * Use case: You can use different options to list, create, or delete branches.
* fork
  * Def: Copy a repo for you to edit without affecting the original repo
  * Use case: You can fork a repo when you’re interested in modifying the repo that you don’t have editing access to. After you’re done, you can submit a pull request to make changes to the original repo. 
  
  ## Establish and Upload Local File to GitHub
1. Open the terminal on your Mac. Create a local folder on your computer that specifies the name of your repo on whichever place you prefer. In this case, I prefer Desktop. 
     ```
     Command: cd Desktop 
     Command: mkdir file_name 
     ```
2. Go into the file that you just created by using cd again. Use git init to create a new repo, which is a .git hidden directory within the directory of the local file that you just created. 
     ```
     Command: cd file_name 
     Command: git init
     ```
3. Create LICENSE and README.md files as a start. In terms of LICENSE, you can use [choosealicense.com](https://choosealicense.com/) (MIT license is recommended) as a source when creating the license, just modify the year and name through vim after copying it. Include your signature or any other info about the repo in the README.md file. 
     ```
     Command: vim LICENSE 
     Command: vim README.md 
     ```
   In order to edit in vim, press i for inserting. After you complete editing, press esc then type :wq to save and quit.
 4. Add the changes you’ve made to the working directory to the staging area. 
     ```
     Command: git add .
     ```
 5. Check whether those files are ready to be committed. 
     ```
     Command: git status
     ```
 6. Commit the changes you’ve made. You have 2 options for entering the description of the commit, either through the text editor (1st command below) or type it within the command (2nd command below). 
     ```
     Command: git commit 
     Command: git commit -m “Enter your description here”
     ```
 7. Sign in to GitHub. Create a new repository by clicking the plus sign at the top right corner of the page. Enter your repo name, description, and create a new repository.
 8. After setting up, there should be an URL on the top of the page. Copy the URL in HTTPS form. Go back to the terminal and add a new remote to the existing directory.  
     ```
     Command: git remote add origin URL_you_copied
     ```
 9. Check whether you’ve successfully set up the remote. 
     ```
     Command: git remote -vv 
     ```
 10. Push your repo up to GitHub with the command below, and you might have to enter your username and password of GitHub if you haven’t done it before. In terms of the syntax, the set-upstream argument ensures that the local branch will track the remote master branch.
     ```
     Command: git push --set-upstream origin master
     ```

## Establish GitHub Repo
1. Login to your GitHub account
2. Create a new repository by clicking the plus sign at the top right corner of the page. Enter your repo name, description, and create a new repo.
3. Check off add a README file and choose a license (MIT License is recommended).
4. Click create repository. 
