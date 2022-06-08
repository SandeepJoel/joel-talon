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
paste that: edit.paste()
paste dell:
  edit.paste()
  key(enter)
slap: edit.undo()
reverse that: edit.redo()
paste match: edit.paste_match_style()
file save: edit.save()

brightness up: key(brightness_up)
brightness down: key(brightness_down)
alfred: key(cmd-space)
wipe: key(backspace)
pull: key(fn-del)
shoot: key(tab)
shoot back: key(shift-tab)
dell: key(enter)
dell back: key(shift-enter)
# show menu: key(ctrl-fn-f2)
# show status: key(ctrl-fn-f8)
# below vimac command
(gustav | month): key(fn-f5)
scroll mode: key(fn-f6)

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
email two: 'sandeep.joel@freshworks.com'
email three: 'sjoel@freshworks.com'
email support: 'support@freshdesk.com'
email manager: 'maya.skumar@freshworks.com'
full name joel: 'A Sandeep Joel'
mobile joel: '9445484948'
mobile thomas: '9841875021'
address joel: 'No. 51, 12 street, astalakshmi nagar, alapakkam, chennai 116'
address thomas: '19, Valluavar street, Chinna Porur, Porur - 600116'
auto thomas: 'TN85K2476'
