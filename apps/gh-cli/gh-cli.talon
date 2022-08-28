tag: user.gh
-

# you can find the configuration files in /Users/sjoel/.config/gh/hosts.yml
hub switch personal: "gh personal\n"
hub switch office: "gh office\n"
hub auth login: "gh auth login\n"
hub auth status: "gh auth status\n"
hub auth logout: "gh auth logout "
hub repo create: "gh repo create "
hub review request: "gh search prs --state=open --review-requested=@me\n"
hub pull mine: "gh pr list --search 'author:SandeepJoelFreshdesk'\n"
hub pull list: "gh pr list "
hub pull status: "gh pr status\n"
hub pull view: "gh pr view\n"
hub pull checks: "gh pr checks\n"
hub pull view web: user.insert_between("gh pr view ", " --web")