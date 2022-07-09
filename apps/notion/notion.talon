app: notion
-
tag(): user.find_and_replace
tag(): user.emoji

file hunt [<user.text>]:
  key(cmd-p)
  insert(user.text or "")
go back: key(cmd-[)
forward: key(cmd-])