# VFX Installers for Linux #

This repository contains scripts to install Nuke, Resolve, and Fusion. These programs are commonly used in Visual Effects and post-production. However they're not distributed as standard Linux installer files (deb, rpm, flatpak, etc), so they can be a bit trickier to install.

There are individual scripts for each program, and one to install them all automatically. It should work on most RHEL-based distros, like Fedora, AlmaLinux, Rocky Linux, etc. And Ubuntu-based distros like PopOS, Zorin, etc.

If you have the choice, I recommend you stick with RHEL-based distros, simply because that's what the programs target, and some plugins like Mocha tend to only make installers for them.

Due to copyright and distribution rights, you have to download the installers yourself.

## Instructions ##

### Step 1 ###
Download or clone this repository wherever you wish, for example your Downloads directory.
### Step 2 ###
Download the Linux installers for the apps you wish to install from their respective websites. You don't need to download all the installers, just the ones you need.
- [Nuke](https://www.foundry.com/products/nuke/download)
- [Resolve](https://www.blackmagicdesign.com/products/davinciresolve)
- [Fusion](https://www.blackmagicdesign.com/products/fusion)
- [Mocha](https://borisfx.com/downloads/?product=mocha&os=linux)
- [Neat Video](https://www.neatvideo.com/download)

### Make sure that: ##
- The installers are in your **Downloads** folder (most browsers place it there by default)
- You don't change the installer filenames. 

#### For advanced user: ####
You can place the installers wherever you need, just add the path as a parameter when you run the scripts in the next step. For example:
```
bash nuke.sh ~/installers/
```

### Step 3 ###
If you wish to install all the programs at once, run the install-all.sh script (it will only install the apps for which you placed an installer). Otherwise, use the individual script for each application.

If you're new to Linux, there are a few ways to run the script. Probably the easiest is to right-click on the directory with the scripts and installers, then select 'Open in Terminal' or 'Open in Console'.

Once you're in the terminal, type bash followed by the name of the script you want to install. For example:

``` bash nuke.sh ```

There's an additional script to install all, which will run all the installers. It will automatically detect if the installer is downloaded and if it's not, it will skip it. So you can download the ones you need and run the command below to install all the downloaded programs:
``` bash install-all.sh ```
