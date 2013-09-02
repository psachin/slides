!SLIDE 
#GNU Emacs
![GNU Emacs logo](images/Emacs-logo.svg)
##### Universal text editor
######_Sachin Patil_

!SLIDE
##
##

###GNU Emacs is like having a dragon's cave of treasures
######  Robert Chassel
######_An Introduction to Programming in Emacs Lisp_

!SLIDE left
## Features
	* Simple to use
	* Easily customizable

!SLIDE left
##Starting _GNU Emacs_

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
#### M : `Alt key`, `Esc key`

`---`
#### C-a : `Control-key` + `a`
#### M-x : `Alt-key` + `x`

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


!SLIDE
##Support code highlihting
~~~~{python}
def gcd(a, b):
    """find GCD/GCF of two numbers by Euclid’s GCD algorithm
    """
    while a != 0:
        a, b = b % a, a
    return b    
~~~~

!SLIDE
##Bash code highlighting
~~~~{bash}
function hello() {
	 echo "hello"
    }
~~~~

!SLIDE
##elisp code highlighting
~~~~{python}
(defun gcd(a b)
  "calculate GCD of two numbers"
  (interactive "nN1: \nnN2: \n")
  (while (not (eq a 0))
    (setq c a)
    (setq a (mod b a))
    (setq b c)
    )
  (message "GCD is %d" b)
  )
~~~~

!SLIDE left

##You can _customize_ with __css__
###like *dropping* the **centering**

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
~~~~
x
~~~~

!SLIDE

#Thanks
##Sachin patil|[isachin@iitb.ac.in](#)
####GitHub|[https://github.com/psachin](https://github.com/psachin)
####Made by [pydown](https://github.com/isnowfy/pydown)

