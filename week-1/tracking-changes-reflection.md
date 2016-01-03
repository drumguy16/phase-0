<h1>Tracking Changes Reflection</h1>


-How does tracking and adding changes make developers' lives easier?

  Tracking and adding changes makes the lives of developers easier by allowing multiple people in different locations to work on and make changes to a remote file while simultaneously allowing all others involved to monitor and review those changes in real time.

-What is a commit?

  A commit is a kind of save point or snapshot of changes being made to a file

-What are the best practices for commit messages?
  Best practices for a commit message are to first use the command: git commit -v. Then, give the message a header/subject line that briefly describes the purpose of the commit. Add one line of space followed by a paragraph of 72 characters or less, describing what this commit does. It is also best practice to use the imperative form for verbs to tell merging the commit *changes* rather than *changed* the master  

-What does the HEAD^ argument mean?

  This argument takes the user back one commit version.

-What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of a git change are: *untracked*, at which point you can *git add* to stage the file; *Staged for commit*, or ready for commit; *Saved or Commit* files.

-Write a handy cheatsheet of the commands you need to commit your changes?

  1. git checkout -b feature-branch-name = creates new branch
  2. git add = stages a file for commit
  3. git status = checks status and changes to current branch
  4. git commit -m = commits and lets you write a commit message while still in shell
  5. git commit -v = commits and lets you write commit message at top of file
  6. git log = lets you checkout log of all commits 

-What is a pull request and how do you create and merge one?
 
 A pull request is best practice for adding and merging changes from a feature branch to the remote master. After creating the feature branch, commiting new code, and and pushing the branch to Github via *git push origin new-branch-name*, click the *compare and pull request* button on the Github repository page. Next, verify that the base and feature branch names on the pull down menus are correct. Write or edit the commit message tittle and description. Then, click the *Create pull request* button. 

 To merge, simply click the *Merge pull request* button on the *Conversaiton* tab of your pull request page and confirm the merge. After the merge, you can delete the branch.

-Why are pull requests preferred when working with teams?
  
  I would assume that pull requests are preffered in teams because you can't just have everyone pasting code directly into the master. There should be some checks and balances. Pull request allow for this before merging new code into the master.