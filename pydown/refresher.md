!SLIDE

#OpenSource
![tux](img/tux.svg)
## Refresher session
####_Sachin_


!SLIDE center

##History
### RMS
![rms](img/rms.jpg)


!SLIDE center

##History
### GNU
![gnu](img/gnu.svg)


!SLIDE center

## Richard M. Stallman
    * GNU Hurd
    * GNU Emacs


!SLIDE center
##History
### UNIX [(www.unix.org)](http://www.unix.org/)
![unix](img/unix.png)


!SLIDE center

##History
### Andrew Tanenbaum
![andrew](img/andrew-t.jpg)


!SLIDE center

##History
# MINIX
###### [http://www.minix3.org](http://www.minix3.org/)

!SLIDE center

##History
### Linus Torvalds
![linus](img/linus.jpg)


!SLIDE center
## Linus Torvalds
    * linux kernel
    * git

!SLIDE center

## Other UNIX's
    - BSD
    - Solarix
    - IBM



!SLIDE

##Beautifying BASH
### Bash configuration files

    * ~/.bash_profile
    * ~/.bashrc
    * /etc/bash.bashrc
	* /etc/profile

!SLIDE left

##Beautifying BASH
### Bash aliases
`~/.bashrc`

~~~~{bash}
alias d='ls -F --group-directories-first --color=always'
~~~~

~~~~{bash}
alias d
~~~~

!SLIDE left
##Beautifying BASH
### Bash functions(Set proxy)
`~/.bashrc`
~~~~{bash}
function iitb_proxy() {
    export http_proxy="http://user:passwd@proxy-host:80/"
    export https_proxy="http://user:passwd@proxy-host:80/"
    export ftp_proxy="http://user:passwd@proxy-host:80/"
    export socks_proxy="http://user:passwd@proxy-host:80/"
}
~~~~

!SLIDE left

##Beautifying BASH
### Bash functions(Make & change directory)
`~/.bashrc`
~~~~{bash}
function mcd()
{
    if [ "$#" -eq 1 ];
	then
	    mkdir --parents "$1"; cd "$1"
    else
        echo "Usage: mcd <DIR_NAME>" > /dev/stderr
    fi
}
~~~~


!SLIDE left

##Beautifying BASH
### Bash functions(Make & change directory, version 2)
`~/.bashrc`
~~~~{bash}
function mcd()
{
    if [ "$#" -eq 1 ]
    then
	echo "Do you want to initialize this as a git repo? "
	select ynq in "Yes" "No" "Quit"; do
	    case $ynq in
		Yes) git init "$1"; cd "$1"
		    break;;
		No) mkdir --parents "$1"; cd "$1"
		    break;;
		Quit) echo "Bye."
		    break;;
	    esac
	    done
    else
        echo "Usage: mcd <DIR_NAME>" > /dev/stderr
    fi
}
~~~~


!SLIDE

## BASH
### Interactive search
~~~~{bash}
Ctrl + r
~~~~

!SLIDE

## File system
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


!SLIDE center

## File system
###_Everything is a file_


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

## Mount
~~~~{bash}
sudo mount -t -o <Options> <device file> <destination directory>
~~~~

~~~~
-t : File system type.
-o : Options such as read-only, read-write etc.
~~~~

#### Man page
~~~~{bash}
man mount
~~~~


!SLIDE left

## Mount
~~~~{bash}
sudo mount -t vfat -o rw /dev/sdb1 /mnt/sworm
~~~~


!SLIDE left

## Remote login
~~~~{bash}
ssh username@hostname
ssh username@IP-address
~~~~

~~~~{bash}
ssh sachin@leo
ssh sachin@10.101.11.108
ssh sachin@localhost
~~~~


!SLIDE left

## Remote copying
##### Using `scp`: Secure CoPy
~~~~{bash}
scp username@hostname:~/file.txt
scp -r username@hostname:~/super-duper-directory
~~~~

##### Using `rsync`
~~~~{bash}
rsync username@hostname:~/file.txt
rsync -r username@hostname:~/super-duper-directory
~~~~

!SLIDE left

## Download file
##### Using `wget`
~~~~{bash}
wget https://www.gnu.org/graphics/Gnulove.jpg
~~~~

~~~~{bash}
wget -rd http://www.tangowithdjango.com/book/

-r: Recursive
-d: Turn on debug output
~~~~





!SLIDE left

##You can customize with css
###like dropping the centering

!SLIDE left

##Easy to use

1. write your slides markdown file
2. python main.py md diretory

!SLIDE

##The previous slide just looks like this

~~~~
 !SLIDE left
 
 ##Easy to use
 
 1. write your slides markdown file
 2. python main.py md diretory
~~~~


!SLIDE

##Just simple
##and enjoy yourself

!SLIDE

#Thanks
##[isnowfy](http://www.isnowfy.com)|[isnowfy](https://github.com/isnowfy) on Github
###Made by [pydown](https://github.com/isnowfy/pydown)
###Inspired by [keydown](https://github.com/infews/keydown)
