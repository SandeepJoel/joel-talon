os: mac
app: Microsoft Teams
-

settings():
    user.mouse_continuous_scroll_amount = 30


channel: key(super-e)
go to left section: key(ctrl-l)

open activity: key(super-1)
open chat: key(super-2)
# open teams: key(super-3)
open calendar: key(super-3)
open helpdesk: key(super-6)
open inside gartner: key(super-7)
open onedrive: key(super-5)

file upload:
    key(shift-alt-o)
    sleep(100ms)
    key(up)
    key(space)

go back: key(super-[)
forward: key(super-])

hunt this: key(super-f)
tag name: 
  insert('@')
  sleep(100ms)
  key(tab)