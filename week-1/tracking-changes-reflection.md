## Tracking Changes Reflection

1. How does tracking and adding changes make developers' lives easier?
2. What is a commit?
3. What are the best practices for commit messages?
4. What does the HEAD^ argument mean?
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
6. Write a handy cheatsheet of the commands you need to commit your changes?
7. What is a pull request and how do you create and merge one?
8. Why are pull requests preferred when working with teams?

1. Developers can use the snapshots created by tracking and adding changes to understand why their product is working the way it is.
2. A commit is like a snapshot, showing what happened at a certain place in time
3. Imperative, less than 50 characters
4. I do no know
5. git status, git log, git commit
6. check the status, commit your changes using git commit -m "insert message here", check the log using git log to make sure the commit went through properly
7. Pull requests checks the server to see if there are any more recent versions of the project to be downloaded
8. So multiple people can edit the same project simultaneously without editing over each other's work
