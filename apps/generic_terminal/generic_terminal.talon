tag: terminal
-
tag(): user.npm
tag(): user.yarn
tag(): user.git
tag(): user.gh

kill that:
  key(ctrl-c)
search:
  key(ctrl-r)
run last:
  key(up)
  key(enter)
action(edit.page_down):
  key(command-pagedown)
action(edit.page_up):
  key(command-pageup)
slap: key(ctrl--)
redo: key(ctrl-y)
clean that: key(cmd-k)
go in: "cd ./\t"
go out: "cd ./../\n"
go to projects: "/Users/sjoel/myfiles/Mr.J5.0/projects\n"
go to talon: "go_to_talon\n"
go to freshdesk: "go_to_freshdesk\n"

output copy: key(cmd-shift-a)
command copy: key(ctrl-alt-cmd-c)
vim mode copy: key(ctrl-alt-cmd-c)
remove everything: "rm -rf "

list all: "ls -all\n"
folder new: "mkdir "
folder delete: "rmdir "

node ex: "npx "

location: "pwd\n"
sudo: "sudo "
alias: "alias "
go to: "go_to_\t"
go back: "cd - \n"
bundle: "bundle "
bundle install: "bundle install"
engine x: "nginx "
sudo engine x: "sudo nginx\n"
sudo engine x quit: "sudo nginx -s quit\n"
sudo engine x reload: "sudo nginx -s reload\n"
redis server: "redis-server \n"
redis shutdown: "redis-cli shutdown \n"
rails server: "bundle exec rails s\n"
rails console: "bundle exec rails c\n"
make current: "Account.find(1).make_current"
account current: "Account.current."
show process: "ps -ax | grep "
show port process: "lsof -t -i:3000"
kill process: "kill -9 "
kill port process: "kill -9 $(lsof -t -i:3000)"
find bundle name: 
  user.insert_between("osascript -e 'id of app \"", "\"'")

brew services list: "brew services list" 
memcached: "memcached"
global start: "launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp* \n"
global stop: "launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp* \n"

open code here: "code .\n"
hunt this: key(cmd-f)
narco: mouse_scroll(-1000)
sarco: mouse_scroll(1000)
bower install: "bower install"

ember help: "npx ember --help"
ember install: "npx ember install"
ember build: "npx ember build -w\n"
ember exam: "npx ember exam -s\n"
ember generate: "npx ember generate "
ember destroy: "npx ember destroy "
ember generate route: "npx ember generate route "
ember destroy route: "npx ember destroy route "
ember generate component: "npx ember generate component -gc"
ember destroy component: "npx ember destroy component "
ember generate adapter: "npx ember generate adapter "
ember generate help: "npx ember generate --help"

pattern stash: 
  user.insert_between("stash@{", "}")
  
# https://ss64.com/osx/syntax-bashkeyboard.html
clear line:
  key(ctrl-u)

# How the below command works correctly without setting any context?
clear:
  key(alt-backspace)

home:
  key(ctrl-a)
end:
  key(ctrl-e)

print echo: user.insert_between("echo \"", "\"")
