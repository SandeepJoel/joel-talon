app: notion
-
tag(): user.find_and_replace
tag(): user.emoji
tag(): user.tabs

settings():
  user.mouse_continuous_scroll_amount = 35

file hunt [<user.text>]:
  key(cmd-p)
  insert(user.text or "")
go back: key(cmd-[)
forward: key(cmd-])