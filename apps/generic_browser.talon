tag: browser
-
tag(): user.find_and_replace
tag(): user.emoji

^address$: browser.focus_address()
[go] forward: 
  key(esc)
  browser.go_forward()
go (back | backward): 
  key(esc)
  browser.go_back()

(refresh | reload): browser.reload()
(refresh | reload) hard: browser.reload_hard()
go to clipboard: browser.go(clip.text())
inspect: key(cmd-shift-c)
copy domain: 
  browser.focus_address()
  user.extract(edit.selected_text())
copy end path: 
  browser.focus_address()
  user.extractPath(edit.selected_text())
google here <user.text>:
  browser.focus_address()
  insert(user.text)
