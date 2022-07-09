tag: user.npm
-

node manage init: "npm init "
node manage init yes: "npm init -y"
node manage start: "npm start\n"
node manage watch: "npm run watch\n"
node manage build: "npm run build\n"
node manage lint: "npm run lint\n"
node manage test: "npm run test\n"
node manage run [<user.text>]: "npm run {text or ''}"
node manage update: "npm update\n"
node manage global update: "npm -g update\n"
node manage install: "npm install\n"
node manage install dev: "npm install --save-dev "
node manage global install: "npm -g install "
node manage uninstall: "npm uninstall --save-dev"
node manage global uninstall: "npm -g uninstall "
node manage list: "npm list\n"
node manage global list: "npm -g list\n"
node manage list depth <number_small>: "npm list --depth={number_small}\n"
node manage global list <number_small>: "npm -g list --depth={number_small}\n"
node manage config set prefix: 
    insert("npm config set prefix ''")
    edit.left()

node manage version: "npm --version\n"