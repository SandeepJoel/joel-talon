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
  user.launch_browser()
  user.mouse_move_center_active_window()
# ^portal$:
#   user.switcher_launch("/Applications/Comet.app")
  # user.switcher_launch("/Applications/Firefox.app")
^finder$:
  user.switcher_launch("/System/Library/CoreServices/Finder.app")
^teams$:
  user.switcher_launch("/Applications/Microsoft Teams.app")
  user.mouse_move_center_active_window()
^slack$:
  user.switcher_launch("/Applications/Slack.app")
  user.mouse_move_center_active_window()
^terminal$:
  user.switcher_launch("/Applications/iTerm.app")
^coder$:
  user.switcher_launch("/Applications/Visual Studio Code.app")
  user.mouse_move_center_active_window()
^coder <user.text>:
  user.switcher_launch("/Applications/Visual Studio Code.app")
  user.mouse_move_center_active_window()
  sleep(100ms)
  user.vscode("workbench.action.switchWindow")
  sleep(100ms)
  insert(user.text)
  key(enter)
^database$:
  user.switcher_launch("/Applications/Sequel Ace.app")
^post man$:
  user.switcher_launch("/Applications/Postman.app")
^notion$:
  user.switcher_launch("/Applications/Notion.app")
  user.mouse_move_center_active_window()
^monitor$:
  user.switcher_launch("/System/Applications/Utilities/Activity Monitor.app")