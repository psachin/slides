!SLIDE

#OpenSource
![tux](img/tux.svg)
## Refresher session
####_Sachin_


!SLIDE

##History
### RMS
![rms](img/rms.jpg)


!SLIDE

##History
### GNU
![gnu](img/gnu.svg)


!SLIDE

## Richard M. Stallman
    * GNU Hurd
    * GNU Emacs


!SLIDE
##History
### UNIX [(www.unix.org)](http://www.unix.org/)
![unix](img/unix.png)


!SLIDE

##History
### Andrew Tanenbaum
![andrew](img/andrew-t.jpg)


!SLIDE

##History
# MINIX
###### [http://www.minix3.org](http://www.minix3.org/)


!SLIDE

##History
### Linus Torvalds
![linus](img/linus.jpg)


!SLIDE center
## Linus Torvalds
    * linux kernel
    * git


!SLIDE

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
#####Bash Prompt
Download file from:

[https://raw.githubusercontent.com/psachin/bash_scripts/master/bashPrompt.sh](https://raw.githubusercontent.com/psachin/bash_scripts/master/bashPrompt.sh
)

Save it as `~/bashPrompt.sh`

`~/.bashrc`
~~~~{bash}
source ${HOME}/bashPrompt.sh
PS1=
~~~~

[https://gist.github.com/psachin/8171015](https://gist.github.com/psachin/8171015)


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


!SLIDE

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
sudo mount -t <fs> -o <options> <device_file> <destination_directory>
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


!SLIDE

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


!SLIDE

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


!SLIDE

## Install software/package
##### Using package manager
       * apt-get(Ubuntu)
	   * aptitude(Debian)
	   * dpkg
	   * yum(RedHat)
	   * rpm
	   * pacman(Arch Linux)
	   * emerge(Gentoo)
	   * slapt-get(Slackware)
	   * pkgtool(Slackware)


!SLIDE

## Install software/package
##### Using `apt-get`
~~~~{bash}
sudo apt-get install <PACKAGE-NAME>
~~~~

Example:
~~~~{bash}
sudo apt-get install wget
~~~~


!SLIDE left

## Install software/package
### from source
~~~~{bash}
wget http://www.ee.surrey.ac.uk/Teaching/Unix/units-1.74.tar.gz
~~~~

~~~~{bash}
tar -xvzf units-1.74.tar.gz
cd units-1.74
~~~~

~~~~{bash}
mkdir ~/units
./configure --prefix=$HOME/units
make
make check
make install
~~~~


!SLIDE left

## Install software/package
### From source & configure
~~~~{bash}
cd ~/units/bin
~~~~

~~~~{bash}
./units
~~~~

`~/.bashrc`
~~~~{bash}
export PATH=$HOME/units/bin:$PATH
~~~~


!SLIDE left

## Media tweaks
#### Convert FLV to MP4
~~~~{bash}
ffmpeg -i input.flv -sameq -ar 22050 output.mp4
~~~~

~~~~
-i: Input file
-sameq: Use same quantizer as source.
-ar: Sampling frequency
~~~~


!SLIDE left

## Media tweaks
#### Extract mp3 audio from MP4
~~~~{bash}
ffmpeg -i video.mp4 -f mp3 -ab 192000 -vn music.mp3
~~~~

~~~~
-i: Input file
-f: Output format
-ab: Encoding rate
-vn: No video
~~~~


!SLIDE left

## Media tweaks
#### Cut video file at time interval
~~~~{bash}
ffmpeg -y -i Video.mp4 -sameq -ss 00:19:49.0 -t 00:04:18.0 -acodec copy -vcodec copy output.mp4
~~~~

~~~~
man ffmpeg
~~~~


!SLIDE left

## Media tweaks
#### Resize an image
~~~~{bash}
convert input.png -quality 75 output.jpg
~~~~


!SLIDE left

## Chat
#### using terminal: `ytalk`

~~~~{bash}
ytalk -h <IP-address> <your-friends-username>
~~~~

~~~~{bash}
talk your-friends-username@IP-address
~~~~


!SLIDE

## Security
#### local

     * /etc/hosts.allow
     * /etc/hosts.deny


!SLIDE

## Security
#### firewall

![fw](img/fw.png)



!SLIDE left

## Security
#### firewall: `iptables`

~~~~{bash}
iptables -A <CHAIN> -p <PROTOCOL> --dport <PORT> -j <WHAT-TO-DO?>
~~~~

~~~~{bash}
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
~~~~


!SLIDE

#Thanks
##Sachin | [isachin@iitb.ac.in](#)
####GitHub|[https://github.com/psachin/slides/tree/master/pydown/refresher](https://github.com/psachin/slides/tree/master/pydown/refresher)
####Made by [pydown](https://github.com/isnowfy/pydown)
