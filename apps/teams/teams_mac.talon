os: mac
app: Microsoft Teams
-

settings():
    user.mouse_continuous_scroll_amount = 30


channel: key(super-e)
go to left section: key(ctrl-l)

go to activity: key(super-1)
go to chat: key(super-2)
# go to teams: key(super-3)
go to calendar: key(super-3)
go to helpdesk: key(super-6)
go to onedrive: key(super-5)

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

tag everyone: 
  insert('@everyone')
  sleep(300ms)
  key(tab)