!SLIDE 
#GNU Emacs
![GNU Emacs logo](images/Emacs-logo.svg)
##### Universal text editor
######_Sachin_

!SLIDE
##
##

###GNU Emacs is like having a dragon's cave of treasures
######  Robert Chassel
######_An Introduction to Programming in Emacs Lisp_


!SLIDE left
## Features
##### Simple to use
##### Easily customizable
##### Take notes
##### Use it as a word processor
##### Write thesis, reports
##### Coding


!SLIDE left
## What I do with Emacs?
##### Manage notes
##### Manage agenda
##### Code
##### Remote text editing
##### Prepare presentation


!SLIDE left
## About GNU Emacs
##### Emacs has been around since 1970's
##### Originally written by Richard Stallman & Guy L. Steele, Jr.
##### It's core is written in C
##### with elisp wrapper


!SLIDE left
##Starting _GNU Emacs_

##### Application menu -> Editors -> Emacs

### GUI
~~~~{bash}
$ emacs &
~~~~

### Command line
~~~~{bash}
$ emacs -nw
~~~~

!SLIDE left
## Key bindings
#### C : `Control key`
#### M : `Alt key`, `Esc key`, `Meta key`

`---`
#### C-a : `Control-key` + `a`
#### M-x : `Alt-key` + `x`



!SLIDE
## Self tutorial
~~~~{bash}
C-h t
~~~~


!SLIDE
## Moving around
![moving](images/moving.png)


!SLIDE left
## Moving around
### Begining of line
~~~~{bash}
C-a
~~~~

### End of line
~~~~{bash}
C-e
~~~~


!SLIDE left
## Emacs macros
###

      * F3: to start recording
	  * F4: to stop recording

      * F4: use macro


!SLIDE left
## Formatting
### Capitalize
~~~~{bash}
M-c
~~~~

### Uppercase
~~~~{bash}
M-u
~~~~

### Lowercase
~~~~{bash}
M-l
~~~~


!SLIDE left
## Select text
~~~~{elisp}
Ctrl + SPACE
~~~~


!SLIDE left
## Basic editing
##### Beginning of file: `M-<`
##### End of file: `M->`
##### Cut: `C-w`
##### Copy: `M-w`
##### paste: `C-y`

##### Spell check: `M-x ispell`


!SLIDE left
## File browser
~~~~
C-xf
~~~~

!SLIDE
##Org mode
### The Beast




!SLIDE

##Emacs modes
###
	1. org-mode
	2. *-mode

##Customizations
###
	1. M-x customize
	2. M-x customize-group
	3. M-x customize-theme
	4. M-x customize-face


!SLIDE left
## Coool extensions
### * yasnippet [https://github.com/capitaomorte/yasnippet](https://github.com/capitaomorte/yasnippet)
### * auto-complete [https://github.com/auto-complete/auto-complete](https://github.com/auto-complete/auto-complete)
### * autopair
### * magit
### * org2blog

!SLIDE left
##Installing packages
~~~~
M-x list-packages
~~~~

Choose your package(s)
~~~~
i
~~~~

Install selected packages
~~~~{bash}
x
~~~~

!SLIDE

#Thanks
##Sachin | [isachin@iitb.ac.in](#)
####GitHub|[https://github.com/psachin](https://github.com/psachin)
####Made by [pydown](https://github.com/isnowfy/pydown)

