# hangoutsbot-locales
Translation project for Hangoutsbot

# Contributor/Developer Guide
### a translation management system might be set up soon
If you are initialising this repo as a submodule of the hangoutsbot project, 
  the submodules repository will be in a 'detached HEAD' state. It is highly
  advisable that you `git checkout master` inside the submodule dir
  to enable tracking if you intend to commit changes directly from the 
  superproject.

To allow anonymous cloning of this repo as a submodule, `.gitmodules` in 
  the hangoutsbot superproject is configured with the read-only url `https://...`. 
  For most users and administrators, this is sufficient. On the other 
  hand, if you are a developer who intends to push changes to this repo 
  from the superproject, you will also have to set your local `pushURL`. 
  The easiest way to do this is to execute this command within the 
  submodule path:
```
git config remote.origin.pushurl git@github.com:hangoutsbot/hangoutsbot-locales.git
```

We recommend always testing and building translations based on the **staging** branch
  of the bot.

## References
* http://stackoverflow.com/questions/3796927/how-to-git-clone-including-submodules
* http://stackoverflow.com/a/23634016
* http://stackoverflow.com/a/16081703
  
  
