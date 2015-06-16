!SLIDE

#GNU/Linux
![tux](img/GNU_and_Tux.svg)
###_Sachin_

!SLIDE left
## About Me
### Software developer/Freelancer/Consultant
##### * Open Source developer
##### * Python/Shell/elisp programmer
##### * Kernel/Emacs hacker
##### * Hardware hobbyist

!SLIDE
##
##
## Why Free and Open Source?

!SLIDE
##
##
## What is _Free_ software?

!SLIDE
##
##
## then what is _Open Source_ software?

!SLIDE left
## Benefits
### * Don't have to pay for Operating System
### * Don't have to pay for Software
### * Get free updates/upgrades
### * Ask for free help
### * Share your own software
### ...

!SLIDE
##History
### RMS
![rms](img/rms.jpg)
[https://stallman.org/](https://stallman.org/)

!SLIDE
## Richard M. Stallman
    * GNU Hurd
    * GNU Emacs

!SLIDE
## Unix timeline
![unix-timeline](img/unix-timeline.png)

!SLIDE
## Linus Torvalds
![linus](img/linus.jpg)
[https://github.com/torvalds](https://github.com/torvalds)

!SLIDE center
## Linus Torvalds
    * linux kernel
    * git

!SLIDE
## GNU/Linux timeline
![gnu-linux-timeline](img/gnu-linux-timeline.svg)

!SLIDE left
##
##
## Movies
- Revolution OS(2001)
- The Code: Story of Linux(2001)
- Pirates of Silicon Valley(1999)

!SLIDE
##
##
## Open Source Alternative?

!SLIDE
## Open Source alternative to MS Windows
### GNU/Linux
![linux](img/gnu.png)

!SLIDE
## Open Source alternative to PhotoShop
### GIMP
![gimp](img/gimp.png)

!SLIDE
## Open Source alternative to MS Office
### LibreOffice
![libreoffice](img/lo.png)

!SLIDE
## Open Source alternative to Turbo C
### GCC
![gcc](img/gcc.svg)

!SLIDE
## Open Source alternative to Matlab
### Scilab
![scilab](img/scilab.jpg)

!SLIDE
## Open Source alternative Adobe Acrobat
### LaTeX
![latex](img/latex.svg)

!SLIDE left
## Open Source alternative to IE
### * Mozilla Firefox
### * Google Chrome
### * SeaMonkey
### * Chromium

!SLIDE left
## Alternative to Notepad, Wordpad, Visual-Studio
    * Vim
	* Emacs
	* Gedit

!SLIDE left
## Open Source alternative(Web development)
    * Python Django
    * Ruby on Rails

!SLIDE
##
##
## GNU/Linux technical aspects

!SLIDE
##GNU/Linux boot process
~~~~
Power ON
~~~~
|
~~~~
POST/BIOS
~~~~
|
~~~~
CD-ROM/HDD
~~~~
|
~~~~
MBR
~~~~
|
~~~~
GRUB/LILO - Boot loader
~~~~
|
~~~~
Kernel
~~~~
|
~~~~
init - Mother of all processes
~~~~
|
~~~~
Run-levels
~~~~
(Ref: [www.tldp.org](http://www.tldp.org/LDP/intro-linux/html/sect_04_02.html))

!SLIDE
##Anatomy of the Linux kernel
~~~~
User application
~~~~
|
~~~~
GNU C Library(`glibc`)
~~~~
|
~~~~
API- System call interface
~~~~
|
~~~~
Kernel
~~~~
|
~~~~
Hardware dependent kernel code
~~~~
|
~~~~
Hardware
~~~~
(Courtesy: [ibm.com](http://www.ibm.com/developerworks/library/l-linux-kernel/))

!SLIDE
## File system hierarchy
~~~~
/-
 |-/root
 |-/home
 |      |-/sachin
 |      |-/roy
 |      |..
 |-/etc
 |-/var
 |     |-/log
 |-/proc
 |-/mnt
 |-/usr
 |    |-/local
 |	  |-/bin
 |	  |-/share
 |	  |-/src
 |	  |..
 |-/bin
 |-/sbin
 |-/opt
~~~~

!SLIDE left
## File system
###_Everything is a file_
#### * Ext3, Ext4
#### * JFS, XFS
#### * BTRFS

!SLIDE left
## File system
### _mount, mount points, mounting_
~~~~
 /dev/sr0
 /dev/sda
         |-/sda1
         |-/sda2
		 |-/sda3
		 |-/sda4
 /dev/sdb
         |-/sdb1
 /dev/sdc
~~~~

~~~~
 /mnt/cdrom
 /mnt/flash
~~~~

!SLIDE left
## What about my existing setup?
#### * Easy migration from Windows to GNU/Linux
#### * Almost all Windows file format are supported

!SLIDE
##
##
## OK. I am ready to switch.
## Which distribution to use from ~750 distro??

!SLIDE left
## Debian
![debian](img/debian.png)
### * Stable
### * Package manager
### * GUI installation
### * Easy to configure

!SLIDE left
## Ubuntu
![ubuntu](img/ubuntu.png)
### * Based on Debian
### * Good community support
### * For newbies
### * Has forks like Edubuntu, Kubuntu, Lubuntu, Xubuntu, Ubuntu Mint..

!SLIDE left
## RedHat
![redhat](img/redhat.png)
### * Recommended for servers
### * Highly stable
### * Linux Admins/Advance users
### * Enterprise use :(

!SLIDE left
## CentOS
![centos](img/centos.png)
### * Based on RedHat's source code
### * Community based
### * Best alternative for RedHat

!SLIDE left
## Fedora
![fedora](img/fedora.png)
### * Based on RedHat's source code
### * Community based
### * Alternative for RedHat

!SLIDE
##
##
## Distros for _geeks_

!SLIDE left
## Slackware
![slackware](img/slackware.png)
### * Based on _nothing_
### * Installation is `ncurses` based
### * Manual configuration
### * _Lot of learning_

!SLIDE left
## Arch Linux
![Arch](img/arch.svg)
### * Based on _nothing_
### * Installation is `ncurses` based
### * Manual configuration
### * _Lot of learning_

!SLIDE left
## Gentoo Linux
![gentoo](img/gentoo.png)
### * Pain to install
### * Manual configuration
### * _Lot of learning_

!SLIDE
##
##
## Lets install GNU/Linux

!SLIDE left
## Installation
    * Boot from CD/USB
    * Partition the HDD
    * Install

!SLIDE left
## Wait!
    * Back your data(I'm not responsible for data loss)
    * Choose the right disk to partition
	* Choose filesystem type
    * Spare some `swap` space

!SLIDE left
## Choosing mount points
    * /boot (where bootloader resides)
    * / (root partition)
    * /root (place where root user's data resides. root's home)
	* /home (users home)
	* `swap`

!SLIDE left
## Configuration(Post install)
#### * User management
#### * Configure network
#### * Install software

!SLIDE left
## Shell: Lets get that black guy
#### * Moving around
#### * Files/Directories
#### * Bit of `regex`

!SLIDE left
## Tips and Trick
#### * Moving: begin/end of a line
#### * Capitalize
#### * lower
#### * UPPER

!SLIDE left
## Text Editors
#### * Emacs
#### * Vim

!SLIDE
#Thanks
##Sachin | [iclcoolster@gmail.com](#)
####GitHub|[https://github.com/psachin/slides/tree/master/pydown/pvppcoe-day1](https://github.com/psachin/slides/tree/master/pydown/pvppcoe-day1)
