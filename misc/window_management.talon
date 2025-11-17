window quit: key(cmd-q)
window (many|mini) mice: key(cmd-m)
window large: key(cmd-alt-=)
window fullscreen: key(cmd-ctrl-f)
move point to <user.running_applications>: 
  user.switcher_focus(running_applications)
  user.mouse_move_center_active_window()
move center: 
  user.mouse_move_center_active_window()
  
^portal$:
  user.switcher_launch("/Applications/Google Chrome.app")
  user.mouse_move_center_active_window()
# ^portal$:
#   user.switcher_launch("/Applications/Comet.app")
^travis$:
  user.switcher_launch("/Applications/Perplexity.app")
  # user.switcher_launch("/Applications/Firefox.app")
^finder$:
  user.switcher_launch("/System/Library/CoreServices/Finder.app")
^terminal$:
  user.switcher_launch("/Applications/iTerm.app")
^coder$:
  user.switcher_launch("/Applications/Visual Studio Code.app")
  user.mouse_move_center_active_window()
^database$:
  user.switcher_launch("/Applications/Sequel Ace.app")
^post man$:
  user.switcher_launch("/Applications/Postman.app")
^notion$:
  user.switcher_launch("/Applications/Notion.app")
  user.mouse_move_center_active_window()
^monitor$:
  user.switcher_launch("/System/Applications/Utilities/Activity Monitor.app")