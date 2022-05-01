app: iterm2
-
#comment or remove tags for command sets you don't want
tag(): user.file_manager
tag(): user.git
# tag(): user.kubectl
tag(): user.tabs
tag(): terminal

action(user.file_manager_open_parent):
    insert("cd ..")
    key(enter)
action(app.tab_open):
  key(cmd-t)
action(app.tab_close):
  key(cmd-w)
action(app.tab_next):
  key(ctrl-tab)
action(app.tab_previous):
  key(ctrl-shift-tab)
action(app.window_open):
  key(cmd-n)
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
suspend:
  key(ctrl-z)
resume:
  insert("fg")
  key(enter)
slap: key(ctrl--)
clear: key(ctrl-u)
redo: key(ctrl-y)
clean that: key(cmd-k)
# scroll up: key(cmd-up)
# scroll down: key(cmd-down)
go in: "cd ./\t"
go out: "cd ./../\n"
copy: "cp "
output copy: key(cmd-shift-a)
move: "mv "
remove: "rm "
remove everything: "rm -rf "
list: "ls\n"
list all: "ls -all\n"
yarn install: "yarn install\n"
yarn add dev: "yarn add --dev "
yarn inspect: "yarn inspect\n"
yarn start: "yarn start\n"
yarn test: "yarn test\n"
yarn watch build: "yarn watch-build\n"
node install: "npm install "
node list: "nvm list\n"
node ex: "npx "
node initiate: "npm init"
location: "pwd\n"
sudo: "sudo "
cat: "cat "
alias: "alias "
go to: "go_to_\t"
go back: "cd -"
bundle: "bundle "
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
kill process: "kill -9 "
kill port process: "kill -9 $(lsof -t -i:3000)"
brew services list: "brew services list" 
memcached: "memcached"
global start: "launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
global stop: "launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*"
split down: key(cmd-shift-d)
expand: key(cmd-shift-enter)
hunt this: key(cmd-f)
narco: mouse_scroll(-1000)
sarco: mouse_scroll(1000)
bower install: "bower install"

ember help: "npx ember --help"
ember install: "npx ember install"
ember generate: "npx ember generate "
ember destroy: "npx ember destroy "
ember generate route: "npx ember generate route "
ember destroy route: "npx ember destroy route "
ember generate component: "npx ember generate component "
ember destroy component: "npx ember destroy component "
ember generate adapter: "npx ember generate adapter "
ember generate help: "npx ember generate --help"