tag: terminal
-
tag(): user.npm
tag(): user.yarn
tag(): user.git
tag(): user.gh
# tag(): find_and_replace

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
go to dot files: "cd /Users/sjoel/.dotfiles\n"
go to engine ex logs: "cd /usr/local/var/log/nginx\n"
go to custom objects local: "cd /Users/sjoel/myfiles/Freshdesk/helpkit-scripts/custom-objects-local\n"
go to cursorless: '/Users/sjoel/.talon/user/cursorless-talon'
go to user: 'cd ~/\n'

# end <- start 
# NOTE: 
#  1. For dotfile migration always move your files from start to end of the symlink location
#  2. Always use the complete path while symlinking, for consistent symlink navigation inside all applications
sim link soft: "ln -s '/Users/sjoel/.dotfiles/user/cursorless-settings' '/Users/sjoel/.talon/user/cursorless-settings'"
sim unlink: "unlink "
copy output: key(cmd-shift-a)
copy command: key(ctrl-alt-cmd-c)
copy vim mode : key(ctrl-alt-cmd-c)
remove files: "rm -rf "
remove file: "rm "
move file: "mv "

node version list: "nvm list\n"
node version install: "nvm install\n"
node version use: "nvm use "

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
bundle ruby: "bundle exec ruby "
bundle side kick: "bundle exec sidekiq -C config/sidekiq_client.yml \n"
bundle shore can: "bundle exec shoryuken -R -C config/shoryuken.yml \n"
bundle database create: "bundle exec rake db:create"
bundle database boot strap: "bundle exec rake db:bootstrap"
bundle ruby: "bundle exec ruby "
bundle ruby clipboard: 
  insert("bundle exec ruby ")
  insert(clip.text())
  key(right)
  insert(" ")
engine x: "nginx "
sudo engine x: "sudo nginx\n"
sudo engine x quit: "sudo nginx -s quit\n"
sudo engine x reload: "sudo nginx -s reload\n"
redis server: "redis-server \n"
redis shutdown: "redis-cli shutdown \n"
rails server: "bundle exec rails s\n"
rails console: "bundle exec rails c\n"

# byebug
break out:
  insert("up")
  key(enter)
break next:
  insert("n")
  key(enter)
break in:
  insert("s")
  key(enter)
break list:
  insert("list=")
  key(enter)
break big:
  insert("c")
  key(enter)
break were:
  insert("w")
  key(enter)
break trace:
  insert("tr")
  key(enter)

ruby account make current one: "a=Account.find(1).make_current"
ruby account make current two: "a=Account.find(2).make_current"
ruby account current: "Account.current"
ruby account launch: user.insert_between("a.launch(:", ")")
ruby account rollback: user.insert_between("a.rollback(:", ")")
ruby account add feature: user.insert_between("a.add_feature(:", ")")
ruby account revoke feature: user.insert_between("a.revoke_feature(:", ")")
ruby account launch parties: "a.all_launched_features\n"
ruby account features: "a.enabled_features_list\n"
ruby launch new portal: "a.launch(:portal_v2, :enable_golden_ox)\n"

rake translation: "rake i18n:js:export "

show process: "ps -ax | grep "
show process [<user.text>]: "ps -ax | grep {text}"
show port process: "lsof -t -i:3000"
kill process: "kill -9 "
kill port process: "kill -9 $(lsof -t -i:3000)"
find bundle name: 
  user.insert_between("osascript -e 'id of app \"", "\"'")

brew services list: "brew services list\n" 
brew services start: "brew services start " 
brew services restart: "brew services restart " 

memcached: "memcached"
global begin: "launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp* \n"
global stop: "launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp* \n"

open code here: "code .\n"
open code : "code "
hunt this: key(cmd-f)
hunt this paste: 
  key(cmd-f)
  sleep(50ms)
  insert(edit.paste())
hunt this [<user.text>]: 
  key(cmd-f)
  sleep(50ms)
  insert(user.text)
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
ember generate component: "npx ember generate component -gc "
ember generate component without script: "npx ember generate component "
ember generate component only script: "npx ember generate component-class "
ember destroy component: "npx ember destroy component "
ember generate adapter: "npx ember generate adapter "
ember generate serializer: "npx ember generate serializer "
ember generate model: "npx ember generate model "
ember generate service: "npx ember generate service "
ember generate controller: "npx ember generate controller "
ember generate help: "npx ember generate --help"
ember generate util: "npx ember generate util "

create react app: "npx create react app"

pattern stash: 
  user.insert_between("stash@{", "}")
pattern global git ignore:
  "code /Users/sjoel/.gitignore_global"

pattern dot files: 
  "/Users/sjoel/.dotfiles/"
  
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

secure shell test: "ssh -T git@github.com"
python activate: 'source env/bin/activate\n'
python app: 'python app.py\n'

deploy shadow fax backend: "bash shadowfax-backend.sh"
deploy shadow fax backend with asset: "bash shadowfax-backend-with-asset.sh"
deploy swat cats backend: "bash swatkats-backend.sh"
deploy swat cats backend with asset: "bash swatkats-backend-with-asset.sh"


tail thousand : "tail -1000 "
tail thousand staging: "tail -1000 staging.log"
tail thousand follow: "tail -n 1000 -f "