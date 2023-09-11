tag: user.npm
-

node package init: "npm init "
node package init yes: "npm init -y"
node package start: "npm start\n"
node package watch: "npm run watch\n"
node package build: "npm run build\n"
node package lint: "npm run lint\n"
node package test: "npm run test\n"
node package run [<user.text>]: "npm run {text or ''}"
node package update: "npm update\n"
node package global update: "npm -g update\n"
node package install: "npm install\n"
node package install dev: "npm install --save-dev "
node package global install: "npm -g install "
node package uninstall: "npm uninstall --save-dev"
node package global uninstall: "npm -g uninstall "
node package list: "npm list\n"
node package global list: "npm -g list\n"
node package list depth <number_small>: "npm list --depth={number_small}\n"
node package global list <number_small>: "npm -g list --depth={number_small}\n"
node package config set prefix: 
    insert("npm config set prefix ''")
    edit.left()

node package version: "npm --version\n"


pure node dev: "pnpm dev\n"
pure node build: "pnpm build\n"
pure node prod: "pnpm prod\n"