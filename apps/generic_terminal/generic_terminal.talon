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

slap: key(ctrl--)
redo: key(ctrl-y)
clean that: key(cmd-k)
go in: "cd ./\t"
go out: "cd ./../\n"
go last command: key(cmd-shift-up)
go next command: key(cmd-shift-down)

vim exit: 
  key(esc)
  insert(':q')
  key(enter)

face(pucker_lips_left): 
  key(shift-pageup)

face(pucker_lips_right): 
  key(shift-pagedown)

# end <- start 
# NOTE: 
#  1. For dotfile migration always move your files from start to end of the symlink location
#  2. Always use the complete path while symlinking, for consistent symlink navigation inside all applications
sim link soft: 'ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"'
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
node version alias: "nvm alias default "

freshkit run: "fdk run \n"
freshkit version: "fdk -v \n"
freshkit validate: "fdk validate "

list all: "ls -all\n"
list file size: "du -sh *\n"
folder new: "mkdir "
folder delete: "rmdir "

node ex: "npx "

location: "pwd\n"
sudo: "sudo "
alias: "alias "
# go to: "go_to_\t"
go back: "cd - \n"
bundle: "bundle "
bundle install: "bundle install"
bundle install and rail server: "bundle install && bundle exec rails s\n"
bundle ruby: "bundle exec ruby "
bundle side kick: "bundle exec sidekiq -C config/sidekiq_client.yml \n"
bundle shore can: "bundle exec shoryuken -R -C config/shoryuken.yml \n"
bundle database create: "bundle exec rake db:create"
bundle database boot strap: "bundle exec rake db:bootstrap"
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
rails middleware: "bundle exec rails middleware\n"

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


rake db create test: "bundle exec rake db:create RAILS_ENV=test"
rake db bootstrap test: "bundle exec rake db:bootstrap RAILS_ENV=test"
rake db drop test: "bundle exec rake db:drop RAILS_ENV=test"

show process: "ps -ax | grep "
show process [<user.text>]: "ps -ax | grep {text}"
show process in port: "lsof -t -i:3000"
kill process: "kill -9 "
kill process  [<user.text>]: "kill -9 {text}"
kill process in port: "kill -9 $(lsof -t -i:3000)"

brew services list: "brew services list\n" 
brew services start: "brew services start " 
brew services restart: "brew services restart " 
brew install: "brew install"

memcached: "memcached"

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

# ember help: "npx ember --help"
# ember install: "npx ember install"
# ember build: "npx ember build -w\n"
# ember exam: "npx ember exam -s\n"
# ember generate: "npx ember generate "
# ember destroy: "npx ember destroy "
# ember generate route: "npx ember generate route "
# ember destroy route: "npx ember destroy route "
# ember generate component: "npx ember generate component -gc "
# ember generate component without script: "npx ember generate component "
# ember generate component only script: "npx ember generate component-class "
# ember destroy component: "npx ember destroy component "
# ember generate adapter: "npx ember generate adapter "
# ember generate serializer: "npx ember generate serializer "
# ember generate model: "npx ember generate model "
# ember generate service: "npx ember generate service "
# ember generate controller: "npx ember generate controller "
# ember generate help: "npx ember generate --help"
# ember generate util: "npx ember generate util "

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
source activate: 'source env/bin/activate\n'
python app: 'python app.py\n'


tail follow staging log: "tail -f log/staging.log"

# start fresh chrome: 'open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security'