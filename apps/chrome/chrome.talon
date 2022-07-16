os: mac
app: chrome
-

# Need to debug why the below commands were not working by default
zoom in: key(cmd-=)
zoom out: key(cmd--)

hunt this: key(cmd-f)
settings: key(cmd-,)
reveal: key(cmd-shift-p)
reveal [<user.text>]:
  key(cmd-shift-p)
  sleep(50ms)
  insert(user.text or "")
  sleep(50ms)
  key(enter)
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

chrome dark reader: key(alt-shift-d)
chrome fake filler: key(cmd-shift-d)
chrome search: key(cmd-shift-a)
chrome one tab display: key(alt-shift-1)
chrome one tab current: key(alt-shift-2)
chrome full page: key(alt-shift-p)
chrome translate: key(alt-shift-t)

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
close tabs way left: key(alt-shift-l)
close tabs way right: key(alt-shift-r)
close other tabs: key(alt-shift-w)
toggle tab pin: key(ctrl-cmd-p)
toggle tab numbers: key(ctrl-space)


# Office specific
pattern retest this please: 'retest this please'
pattern retest coverity: "retest coverity"
pattern retest bundle: "retest bundle size"
pattern retest default: "retest default"
pattern retest linters: "retest linters"
pattern retest threads: "retest threads-addon"
pattern retest common: "retest common-addon"

pattern select tickets: "select * from helpdesk_tickets where account_id="
pattern select tickets where: "select * from helpdesk_tickets where account_id= and helpdesk_tickets.display_id="