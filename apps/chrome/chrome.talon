os: mac
app: chrome
-

settings():
  user.mouse_continuous_scroll_amount = 400

face(pucker_lips_right): 
  user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop): 
  user.mouse_scroll_stop()

face(pucker_lips_left): 
  user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop): 
  user.mouse_scroll_stop()

# Need to debug why the below commands were not working by default
zoom in: key(cmd-=)
zoom out: key(cmd--)

hunt this: key(cmd-f)
settings: key(cmd-,)
reveal: key(cmd-shift-p)
reveal [<user.text>]:
  key(cmd-shift-p)
  sleep(300ms)
  insert(user.text or "")
  sleep(300ms)
  key(enter)
file hunt: key(cmd-p)
file hunt [<user.text>]: 
  key(cmd-p)
  sleep(50ms)
  insert(user.text)
file hunt (pace | paste):
  key(cmd-p)
  sleep(50ms)
  edit.paste()
youtube that: key(alt-s)
add (curser | cursor): key(fn-f7)

# debugger
clean that: key(cmd-k)
clean network: 
  key(cmd-e cmd-e)
break next: key(cmd-')
break in: key(cmd-;)
break out: key(cmd-shift-;)
break big: key(cmd-\)
break stop: key(cmd-f8)
tab left: key(cmd-[)
tab right: key(cmd-])

chrome dark reader: key(alt-shift-d)
chrome dark reader current: key(alt-shift-a)
chrome fake filler: key(cmd-shift-d)
chrome search: key(cmd-shift-a)
chrome one tab display: key(alt-shift-1)
chrome one tab current: key(alt-shift-2)
chrome full page: key(alt-shift-p)
chrome translate: key(alt-shift-t)

query param dev: "?dev=true"

toggle tree: key(cmd-shift-s)
close tabs way left: key(alt-shift-l)
close tabs way right: key(alt-shift-r)
close other tabs: key(alt-shift-w)
toggle tab pin: key(ctrl-cmd-p)
toggle tab numbers: key(ctrl-space)