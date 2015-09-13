## 1.5 Tracking Changes Reflection

* #Reflection#

I now feel like we are getting into the meat of git and github. These commands are what will make up a large portion of our version control efforts and it was explained (mostly) very clear. This for me is a bit of a critical point for myself and others who I will be working with I am sure. I enjoyed developing a more thorough understanding of git and github, much more so than the instruction I received in my university course.

* #How does tracking and adding changes make developers' lives easier?#

Tracking and adding changes makes developers lives easier for many different reasons. If a bug is introduced into a project it is easy to jump back to a prior version without the bug, and start again from that point. Tracking enables collaborators to figure out who made specific changes and it enables people to ask the contributor questions about the work they contributed.

* #What is a commit?#

A commit is a save point on your project. Files that have been worked on can be committed to the project (some or all). Once additional work is completed, you can return back to the commit should you want to start back from a prior commit.

* #What are the best practices for commit messages?#

Best practices for commit messages are to have a sort of subject line that is about 50 characters or less that more or less summarizes the commit. A more detailed description can appear after with a space between the first line. Use the imperative form when describing changes made. For example instead of fixed or fixes, use fix bug. The reason being that it mimics commands used in the CLI.

* #What does the HEAD^ argument mean?#

HEAD^ means the prior commit that was made. A user will be working off of a commit and the HEAD^ will take that user back to the prior commit. The ^ can be interchanged with integers to go further back.

* #What are the 3 stages of a git change and how do you move a file from one stage to the other?#

The 3 stages of a git change are: unstaged, staged but not comitted, and committed. When you create a new file it is unstaged. To stage it you need to enter the following command: git add >filename.here<
Then once it has been staged it needs to be commmited by entering the following command: git commit -m "enter commit message here"

* #Write a handy cheatsheet of the commands you need to commit your changes?#

git add _filename.here_
git commit -m "commit message here"

git status <--- to determine status of changes
git reset --soft HEAD ^ <--- to go back to prior commit
git checkout -b _branch-name_ <--- to create a new branch to work from

* #What is a pull request and how do you create and merge one?#

A pull request is a request to merge a branch into the working (master) repository. To create a pull request you need to go to push your branch to github with all of its changes. Then on the github website navigate to the branch you just pushed and click on the pull request button. The owners of the repo will see the request and review it. Once it is approved they will add it to the master branch and it will be merged. 

* #Why are pull requests preferred when working with teams?#

Pull request are preferred when working with teams because several people are working on the project at any given time, people could have merged their branches while you are working on yours and it could create conflicts. Pull requests help to catch critical errors before they are added to the working repo.