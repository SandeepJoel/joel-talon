(escape | hash cap): key(esc)
north: user.page_up()
step down: user.page_down()
slap: edit.undo()
yes indeed: edit.redo()
paste match: edit.paste_match_style()
brightness up: key(brightness_up)
brightness down: key(brightness_down)
^alfred: key(cmd-space)
^alfred select:
  text = edit.selected_text()
  key(cmd-space)
  sleep(25ms)
  insert(text)
  edit.selected_text()
  key(cmd-a)
^alfred clipboard:
  text = clip.text()
  key(cmd-space)
  sleep(25ms)
  insert(text)
  key(cmd-a)
^alfred [<user.text>]:
  key(cmd-space)
  sleep(25ms)
  insert(user.text or "")
  key(enter)

# AI
^travis hunt: key(ctrl-alt-cmd-p)
# travis select: key(ctrl-alt-cmd-p)
^travis select:
  text = edit.selected_text()
  key(ctrl-alt-cmd-p)
  sleep(25ms)
  insert(text)
  edit.selected_text()
  key(cmd-a)

^travis [<user.text>]:
  key(ctrl-alt-cmd-p)
  sleep(25ms)
  insert(user.text or "")
  key(enter)
# maccy
clip history: key(cmd-shift-m) 
fly fast: key(escape escape)
wipe: key(backspace)
pull: key(fn-del)
shoot: key(tab)
shoot back: key(shift-tab)
del: key(enter)
del back: key(shift-enter)
end ten: key(enter)
# show menu: key(ctrl-fn-f2)
# show status: key(ctrl-fn-f8)

key(cmd-shift-space): speech.disable()
key(cmd-shift-,): speech.enable()
clipboard history: key(ctrl-alt-cmd-m)

# below commands for vimac 
^month time$: key(fn-f5)
# scroll mode: key(fn-f6)
^hold <user.modifier_with_keys>: key(modifier_with_keys)

pattern is: "Yes" 
pattern add: "Add " 
pattern helpdesk: "helpdesk" 
pattern at gmail dot com: "@gmail.com" 
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

pattern ember get: user.insert_between("Ember.get(this,'", "')")
pattern decode component: user.insert_between("decodeURIComponent('", "')")
pattern encode component: user.insert_between("encodeURIComponent('", "')")
pattern date: user.insert_between("new Date(", ")")


address localhost: "127.0.0.1"

pattern tag para:
  user.insert_between("<p>", "</p>")
pattern tag block:
  user.insert_between("<", "></>")
pattern tag inline:
  user.insert_between("<", " />")
pattern tag break:
  insert('<br>')
pattern tag span:
  user.insert_between("<span>", "</span>")
pattern tag div:
  user.insert_between("<div>", "</div>")
pattern tag Fragment:
  user.insert_between("<Fragment>", "</Fragment>")

double <user.number_key>: key(number_key number_key)
triple <user.number_key>: key(number_key number_key number_key)
triple double quotes: user.insert_between('"""', '"""')

unhide files: key(cmd-shift-.)
# screen color switch: key(ctrl-alt-cmd-8)

email personal: 'joeltheking00000001@gmail.com'
email gartner: 'asandeep.joel@gartner.com'
email client chris: 'chris.humphres@redcross.org'
email old reader: 'automation.gcom.INVWEBPM10@alphabet.com'
email official: 'sandeepjoelofficial@gmail.com'
email joel code: 'joelcode001@gmail.com'
email office swatkats: 'sandeep.joel+001@freshworks.com'
email temporary: 'mougroibagrureu-1592@yopmail.com'
email manager: 'vijayaprasad.sundarasamy@gartner.com'
full name joel: 'A Sandeep Joel'
full name christina: 'Christina D'
full name anand: 'Anand Edward'
full name son jana: 'Sanjana A'
full name sham: 'Shyam Chockalingam'
full name santosh: 'Santosh Kalburgi'
full name manager: 'Vijayaprasad Sundarasamy'
full name mugesh: 'Mugesh S'
full name kishore: 'Kishore'
full name Kusuma: 'Kusuma Goli'
full name chandira: 'Chandira'
mobile joel: '9445484948'
mobile thomas: '9841875021'
address joel: 'No. 51, 12 street, astalakshmi nagar, alapakkam, chennai 116'
address thomas: '19, Valluavar street, Chinna Porur, Porur - 600116'
auto thomas: 'TN85K2476'

user name joel: "SandeepJoel"
webcode sample: "GCDAOWEB"
user id joel: "171665105"