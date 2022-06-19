window quit: key(cmd-q)
window large: key(cmd-alt-=)
window fullscreen: key(cmd-ctrl-f)
switch <user.running_applications>: user.switcher_focus(running_applications)
^portal$:
  user.switcher_focus("Google Chrome")
  # sleep(200ms)
coder$:
  # user.desktop(2)
  user.switcher_launch("/Applications/Visual Studio Code.app")
  # sleep(200ms)