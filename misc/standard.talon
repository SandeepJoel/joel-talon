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

north: user.page_up()
step down: user.page_down()
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
^month time$: key(fn-f5)
# scroll mode: key(fn-f6)
^hold <user.modifier_with_keys>: key(modifier_with_keys)

pattern is: "Yes" 
pattern false: "false"
pattern true: "true"
pattern root: "route"
pattern rejects: "regex"
pattern yet again: "yarn"
pattern dot com: ".com"
pattern nose jay: "knausj"
pattern bootstrap: 'api/_/bootstrap/'
pattern bootstrap me: 'api/_/bootstrap/me'
pattern account: 'api/_/bootstrap/account/'
pattern current: './'
pattern parent: '../'
pattern link tree: 'https://linktr.ee/sandeepjoel'
pattern link profile: 'https://www.linkedin.com/in/sandeepjoel/'
pattern link: user.insert_between("https://", "/")
pattern link plain: user.insert_between("http://", "/")
pattern link google: "https://www.google.com/"

address localhost: "127.0.0.1"

padding: 
	insert("  ") 
	key(left)
tag para:
  insert('<p></p>')
  key(left)
  key(left)
  key(left)
  key(left)
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

double <user.number_key>: key(number_key number_key)
triple <user.number_key>: key(number_key number_key number_key)

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
