window quit: key(cmd-q)
window many mice: key(cmd-m)
window large: key(cmd-alt-=)
window fullscreen: key(cmd-ctrl-f)
# switch <user.running_applications>: user.switcher_focus(running_applications)
^portal$:
  user.switcher_launch("/Applications/Google Chrome.app")
^finder$:
  user.switcher_launch("/System/Library/CoreServices/Finder.app")
^terminal$:
  user.switcher_launch("/Applications/iTerm.app")
^coder$:
  user.switcher_launch("/Applications/Visual Studio Code.app")
^database$:
  user.switcher_launch("/Applications/Sequel Ace.app")
^post man$:
  user.switcher_launch("/Applications/Postman.app")
^sublime$:
  user.switcher_launch("/Applications/Sublime Text.app")