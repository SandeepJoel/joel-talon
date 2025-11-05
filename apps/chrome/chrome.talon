os: mac
app: chrome
-

settings():
  user.mouse_continuous_scroll_amount = 30

# Need to debug why the below commands were not working by default
zoom in: key(cmd-=)
zoom out: key(cmd--)

hunt this: key(cmd-f)
# check why the below command does not work
# hunt this word [<user.text>]: 
#   key(cmd-f)
#   sleep(50ms)
#   insert(user.text)
settings: key(cmd-,)
inspect: key(cmd-shift-c)
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
# tab left: key(cmd-[)
# tab right: key(cmd-])

chrome dark reader: key(alt-shift-d)
chrome dark reader current: key(alt-shift-a)
chrome fake filler: key(cmd-shift-d)
chrome time zone: key(cmd-shift-z)
chrome search: key(cmd-shift-a)
chrome one tab display: key(alt-shift-1)
chrome one tab current: key(alt-shift-2)
chrome full page: key(alt-shift-p)
chrome translate: key(alt-shift-t)

mark next: key(f2)
mark this: key(ctrl-f2)

query param dev: "?dev=true"

toggle tree: key(cmd-shift-s)
close tabs way left: key(alt-shift-l)
close tabs way right: key(alt-shift-r)
close other tabs: key(alt-shift-w)
toggle tab pin: key(ctrl-cmd-p)
toggle tab numbers: key(ctrl-space)