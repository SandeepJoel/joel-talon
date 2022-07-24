window quit: key(cmd-q)
window large: key(cmd-alt-=)
window fullscreen: key(cmd-ctrl-f)
# switch <user.running_applications>: user.switcher_focus(running_applications)
^portal$:
  user.switcher_focus("Google Chrome")
^terminal$:
  # user.switcher_focus("iTerm")
  user.switcher_launch("/Applications/iTerm.app")
^coder$:
  user.switcher_launch("/Applications/Visual Studio Code.app")
^database$:
  user.switcher_launch("/Applications/Sequel Ace.app")