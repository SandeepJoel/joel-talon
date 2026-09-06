(escape | hash cap): key(esc)
north: user.page_up()
step down: user.page_down()
slap: edit.undo()
yes indeed: edit.redo()
space out: key(enter:2)
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
  sleep(100ms)
  insert(user.text or "")


# AI global assistant
^travis: 
  speech.disable()
  key(ctrl-alt-cmd-c)

^whisper$:
  key(fn-space)
  speech.disable()

^gemini page:
  user.launch_browser()
  sleep(100ms)
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('gemini.google.com')
  key(enter)

^gemini page select:
  text = edit.selected_text()
  user.launch_browser()
  sleep(100ms)
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('gemini.google.com')  
  key(enter)
  insert(text)

^gemini page [<user.text>]:
  user.launch_browser()
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('gemini.google.com')
  key(enter)
  sleep(200ms)
  insert(user.text)

^gemini hunt select:
  text = edit.selected_text()
  user.launch_browser()
  user.mouse_move_center_active_window()
  user.open_url_next_to_current('gemini.google.com')
  sleep(1500ms)
  insert(text)
  key(enter)

^gemini hunt [<user.text>]:
  user.launch_browser()
  user.mouse_move_center_active_window()
  user.open_url_next_to_current('gemini.google.com')
  sleep(1000ms)
  insert(user.text)

^claude page:
  user.launch_browser()
  sleep(100ms)
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('claude.ai')
  key(enter)

^claude page select:
  text = edit.selected_text()
  user.launch_browser()
  sleep(100ms)
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('claude.ai')
  key(enter)
  insert(text)

^claude page [<user.text>]:
  user.launch_browser()
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('claude.ai')
  key(enter)
  sleep(200ms)
  insert(user.text)

^claude hunt select:
  text = edit.selected_text()
  user.launch_browser()
  user.mouse_move_center_active_window()
  user.open_url_next_to_current('claude.ai')
  sleep(1500ms)
  insert(text)
  key(enter)

^claude hunt [<user.text>]:
  user.launch_browser()
  user.mouse_move_center_active_window()
  user.open_url_next_to_current('claude.ai')
  sleep(1000ms)
  insert(user.text)

^chat page [<user.text>]:
  user.launch_browser()
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  insert('chatgpt.com')
  key(enter)
  insert(user.text)

^chat page select:
  text = edit.selected_text()
  user.launch_browser()
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  insert('chatgpt.com')
  key(enter)
  insert(user.text)  

^chat page:
  user.launch_browser()
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  insert('chatgpt.com')
  key(enter)

fly fast: key(escape escape)
next line: key(escape down)
wipe: key(backspace)
pull: key(fn-del)
shoot: key(tab) 
shoot back: key(shift-tab)
del: key(enter)
del back: key(shift-enter)
end ten: key(enter)
# show menu: key(ctrl-fn-f2)
# show status: key(ctrl-fn-f8)

#homerow
# letter switch: key(ctrl-alt-cmd-space) 
# letter search: key(cmd-shift-o) 
# letter scroll: key(cmd-shift-j) 

^whatsapp page:
  user.launch_browser()
  sleep(100ms)
  user.mouse_move_center_active_window()
  key(cmd-shift-a)
  sleep(100ms)
  insert('web.whatsapp.com')
  key(enter)

blind that: 
  term = edit.selected_text()
  user.open_url('https://www.teamblind.com/search/' + '{term}')

blind hunt <user.text>: 
  user.open_url("https://www.teamblind.com/search/{user.text}")

glass door that:
  text = edit.selected_text()
  user.search_with_search_engine("https://www.google.com/search?q=%s", "glassdoor {text}")

glass door hunt <user.text>: 
  user.open_url("https://www.google.com/search?q=glassdoor {user.text}")

github hunt <user.text>: 
  user.open_url("https://github.com/search?q={user.text}&type=repositories")

youtube hunt <user.text>: 
  user.open_url("https://www.youtube.com/results?search_query={user.text}")

reddit hunt <user.text>:
  user.open_url("https://www.reddit.com/search/?q={user.text}")

key down: key(down)
key up: key(up)
key left: key(left)
key right: key(right)
key tab: key(tab)

key(cmd-shift-space): speech.disable()

# TODO: Need to identify why the below command does not work
# clipboard history: key(cmd:down space 4 cmd:up)

# below commands for vimac 
^month time$: key(fn-f5)
# scroll mode: key(fn-f6)
^hold <user.modifier_with_keys>: key(modifier_with_keys)

pattern no jira: "NO-JIRA" 
pattern gera: "EC-75988"
pattern is: "Yes" 
pattern add: "Add " 
pattern helpdesk: "helpdesk" 
pattern at gmail dot com: "@gmail.com" 
pattern jay query: "jQuery" 
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
pattern gee npm: 'g-npm-'
pattern link: user.insert_between("https://", "/")
pattern link plain: user.insert_between("http://", "/")
pattern link google: "https://www.google.com/"
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
website link {user.website}: '{website}'


unhide files: key(cmd-shift-.)
# screen color switch: key(ctrl-alt-cmd-8)

email personal: 'joeltheking00000001@gmail.com'
email old reader: 'automation.gcom.INVWEBPM10@alphabet.com'
email official: 'sandeepjoelofficial@gmail.com'
email joel code: 'joelcode001@gmail.com'
email temporary: 'mougroibagrureu-1592@yopmail.com'
full name joel: 'A Sandeep Joel'
full name christina: 'Christina D'
full name anand: 'Anand Edward'
full name son jana: 'Sanjana A'
full name sham: 'Shyam Chockalingam'
full name santosh: 'Santosh Kalburgi'
full name manager: 'advanced search '
full name mugesh: 'Mugesh S'
full name kishore: 'Kishore'
full name Kusuma: 'Kusuma Goli'
full name chandira: 'Chandira'
full name senthil: 'Senthil'
full name Shubhanshu: 'Shubhanshu'
name nithish: 'Nithish'
name srinivasan: 'Srinivasan'
name siwalik: 'Siwalik'
name Bharath: 'Bharath'
name Manoj: 'Manoj Krishnan'
name prakash: 'Prakash freshdesk'
mobile joel: '9445484948'
mobile thomas: '9841875021'
address joel: 'No. 51, 12 street, astalakshmi nagar, alapakkam, chennai 116'
address thomas: '19, Valluavar street, Chinna Porur, Porur - 600116'
auto thomas: 'TN85K2476'

user name joel: "SandeepJoel"
webcode sample: "GCDAOWEB"
user id joel: "171665105"

repo coretopic: "coretopic-app"
repo elearning: "elearning-app"
repo key initiative: "key-initiative-app"
repo virtual event: "virtualevent-app"
repo header [footer]: "gheaderfooter"
repo homepage: "nxtgen-homepage-app"
repo next gen notification: "g-npm-nxtgen-notification-view"
repo type ahead: "gsearch-typeahead"
repo advanced search : "gsearch-advanced-search"
repo inquiry: "g-npm-inquiry"
repo you eye: "g-npm-ui"
repo analytics: "g-npm-analytics"
repo utils: "g-npm-utils"
repo loading components: "g-npm-loading-components"
