#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell".
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()

north: key(pageup)
saudi: key(pagedown)
zoom reset: edit.zoom_reset()
scroll up: edit.page_up()
scroll down: edit.page_down()

copy that: edit.copy()
cut that: edit.cut()
(pace | paste) that: edit.paste()
(pace | paste) (del|enter):
  edit.paste()
  key(enter)
slap: edit.undo()
yes indeed: edit.redo()
paste match: edit.paste_match_style()
file save: edit.save()

brightness up: key(brightness_up)
brightness down: key(brightness_down)
alfred: key(cmd-space)
alfred [<user.text>]:
  key(cmd-space)
  sleep(25ms)
  insert(user.text or "")
  key(enter)

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
key(ctrl-alt-cmd-a): speech.enable()
# key(ctrl-alt-cmd-m) to switch mic

# below commands for vimac 
month: key(fn-f5)
# scroll mode: key(fn-f6)
^hold <user.modifier_with_keys>: key(modifier_with_keys)

boolean false: "false"
boolean true: "true"

# url
pattern bootstrap: 'api/_/bootstrap/'
pattern bootstrap me: 'api/_/bootstrap/me'
pattern account: 'api/_/bootstrap/account/'
pattern current: './'
pattern parent: '../'

padding: 
	insert("  ") 
	key(left)
tag para:
  insert('<p></p>')
  key(left)
  key(left)
  key(left)
  key(left)
tag break:
  insert('<br>')
tag span:
  insert('<span></span>')
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)
tag div:
  insert('<div></div>')
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)
  key(left)

unhide files: key(cmd-shift-.)
email one: 'joeltheking00000001@gmail.com'
email office: 'sandeep.joel@freshworks.com'
email three: 'sjoel@freshworks.com'
email official: 'sandeepjoelofficial@gmail.com'
email support: 'support@freshdesk.com'
email temporary: 'tajotoy761@hekarro.com'
email manager: 'maya.skumar@freshworks.com'
full name joel: 'A Sandeep Joel'
mobile joel: '9445484948'
mobile thomas: '9841875021'
address joel: 'No. 51, 12 street, astalakshmi nagar, alapakkam, chennai 116'
address thomas: '19, Valluavar street, Chinna Porur, Porur - 600116'
auto thomas: 'TN85K2476'
