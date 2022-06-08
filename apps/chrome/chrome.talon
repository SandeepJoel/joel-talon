os: mac
app: chrome
-

# Need to debug why the below commands were not working by default
zoom in: key(cmd-=)
zoom out: key(cmd--)

hunt this: key(cmd-f)
settings: key(cmd-,)
reveal: key(cmd-shift-p)
file hunt: key(cmd-p)
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

command retest this please: 'retest this please'

link local: 'http://localhost.freshdesk-dev.com:4200/'
link joel: 'http://joel.freshdesk-dev.com/'
link user interface: "https://userinterface.freshdesk.com/"
link fresh ops: "https://freshopsadmin.freshdesk.com/home"
link calendar: 'https://calendar.google.com/calendar/u/0/r'
link extensions: "chrome://extensions"
link extensions shortcuts: "chrome://extensions/shortcuts"

chrome dark reader: key(alt-shift-d)
chrome fake filler: key(cmd-shift-d)
chrome search: key(cmd-shift-a)
chrome one tab display: key(alt-shift-1)
chrome one tab current: key(alt-shift-2)
chrome full page: key(alt-shift-p)
chrome translate: key(alt-shift-t)

# url
path bootstrap: 'api/_/bootstrap/'
path account: 'api/_/bootstrap/account/'

query dev: "?dev=true"

template hello sir:
  insert("Hello Sir,")
  key(enter)
  sleep(50ms)
  key(space)
  key(space)
  key(space)
  key(space)
  key(space)
  key(space)
template hello madam:
  insert("Hello Madam,")
  key(enter)
  sleep(50ms)
  key(space)
  key(space)
  key(space)
  key(space)
  key(space)
  key(space)

toggle tree: key(cmd-shift-s)