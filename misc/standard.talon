(escape | hash cap): key(esc)
north: user.page_up()
step down: user.page_down()
slap: edit.undo()
yes indeed: edit.redo()
paste match: edit.paste_match_style()
brightness up: key(brightness_up)
brightness down: key(brightness_down)
alfred: key(cmd-space)
alfred select:
  text = edit.selected_text()
  key(cmd-space)
  sleep(25ms)
  insert(text)
  edit.selected_text()
  key(cmd-a)
alfred [<user.text>]:
  key(cmd-space)
  sleep(25ms)
  insert(user.text or "")
  key(enter)

clip history: key(ctrl-alt-cmd-c) 
fly fast: key(escape escape)
wipe: key(backspace)
pull: key(fn-del)
shoot: key(tab)
shoot back: key(shift-tab)
del: key(enter)
del back: key(shift-enter)
# show menu: key(ctrl-fn-f2)
# show status: key(ctrl-fn-f8)

key(ctrl-alt-cmd-space): speech.disable()
key(ctrl-alt-cmd-,): speech.enable()
# key(ctrl-alt-cmd-m) to switch mic

# below commands for vimac 
^month time$: key(fn-f5)
# scroll mode: key(fn-f6)
^hold <user.modifier_with_keys>: key(modifier_with_keys)

pattern is: "Yes" 
pattern helpdesk: "helpdesk" 
pattern shadow facts: "shadowfax" 
pattern swat cats: "swatkats" 
pattern jay query: "jQuery" 
pattern git message build portal assets: " [build portal assets]" 
pattern asset sink: "asset_sync" 
pattern warts up: "whatsapp" 
pattern a ray: "array" 
pattern delete: "delete" 
pattern bullion: "boolean" 
pattern false: "false"
pattern true: "true"
pattern root: "route"
pattern rejects: "regex"
pattern yet again: "yarn"
pattern dot com: ".com"
pattern nose jay: "knausj"
pattern path bootstrap: 'api/_/bootstrap/'
pattern path ticket fields: 'api/_/ticket_fields'
pattern path bootstrap me: 'api/_/bootstrap/me'
pattern path tickets new: 'a/tickets/new'
pattern path account: 'api/_/bootstrap/account/'
pattern help desk tickets: 'helpdesk_tickets'
pattern current: './'
pattern parent: '../'
pattern grandparent: '../../'
pattern link link tree: 'https://linktr.ee/sandeepjoel'
pattern link linked in: 'https://www.linkedin.com/in/sandeepjoel/'
pattern link stack overflow: 'https://stackoverflow.com/users/2933127/sandeep-joel'
pattern link github: 'https://github.com/SandeepJoel/'
pattern link: user.insert_between("https://", "/")
pattern link plain: user.insert_between("http://", "/")
pattern link google: "https://www.google.com/"

pattern sequel select tickets: "select * from helpdesk_tickets where account_id="
pattern sequel select tickets where: "select * from helpdesk_tickets where account_id= and helpdesk_tickets.display_id="

address localhost: "127.0.0.1"

tag para:
  insert('<p></p>')
  key(left:4)
tag block:
  user.insert_between("<", "></>")
  key(left:3)
tag inline:
  insert('< />')
  key(left:3)
tag break:
  insert('<br>')
tag span:
  insert('<span></span>')
  key(left:7)
tag div:
  insert('<div></div>')
  key(left:6)

double <user.number_key>: key(number_key number_key)
triple <user.number_key>: key(number_key number_key number_key)

unhide files: key(cmd-shift-.)
screen color switch: key(ctrl-alt-cmd-8)
toggle clip board: key(ctrl-shift-i)

email personal: 'joeltheking00000001@gmail.com'
email office: 'sandeep.joel@freshworks.com'
email office Microsoft: 'sjoel@freshworks.com'
email mountains disappear: 'sandeep.joel+0031@freshworks.com'
email contact bob: 'bob.tree@freshdesk.com'
email official: 'sandeepjoelofficial@gmail.com'
email support: 'support@freshdesk.com'
email joel code: 'joelcode001@gmail.com'
email office swatkats: 'sandeep.joel+001@freshworks.com'
email temporary: 'mougroibagrureu-1592@yopmail.com'
email manager: 'selvakumar.ruban@freshworks.com'
full name joel: 'A Sandeep Joel'
mobile joel: '9445484948'
mobile thomas: '9841875021'
address joel: 'No. 51, 12 street, astalakshmi nagar, alapakkam, chennai 116'
address thomas: '19, Valluavar street, Chinna Porur, Porur - 600116'
auto thomas: 'TN85K2476'

user name joel: "SandeepJoel"

ember get: user.insert_between("Ember.get(this,'", "')")
insert date: user.insert_between("new Date(", ")")