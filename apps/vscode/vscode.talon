
app: vscode
-

reveal [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")
file duplicate:
	user.vscode("fileutils.duplicateFile")
	sleep(150ms)
file delete:
  user.vscode("fileutils.removeFile")
  sleep(150ms)

define show: user.vscode("editor.action.revealDefinition")
define peek: user.vscode("editor.action.peekDefinition")
define side: user.vscode("editor.action.revealDefinitionAside")

fold one: key(cmd-k cmd-1)
fold two: key(cmd-k cmd-2)
fold three: key(cmd-k cmd-3)
fold four: key(cmd-k cmd-4)
fold five: key(cmd-k cmd-5)
fold six: key(cmd-k cmd-6)
fold seven: key(cmd-k cmd-7)
fold eight: key(cmd-k cmd-8)
fold nine: key(cmd-k cmd-9)

# personalised actions and extensions
file copy local: user.vscode("copyRelativeFilePath")
close other tabs: user.vscode("workbench.action.closeOtherEditors")
close all: user.vscode("workbench.action.closeAllEditors")
close tabs to the right: user.vscode("workbench.action.closeEditorsToTheRight")
close tabs to the left: user.vscode("workbench.action.closeEditorsToTheLeft")
collapse files: user.vscode("workbench.files.action.collapseExplorerFolders") 
clean that: key(cmd-alt-u)
salt that: key(fn-f4)
salt back: key(shift-fn-f4)

mark that: key(cmd-alt-k)
mark list: key(cmd-alt-m)
mark next: key(cmd-alt-.)
mark prev: key(cmd-alt-,)
# the below command will delete all bookmarks from all files
mark delete: key(cmd-alt-\) 
comment: key(cmd-/)
project: key(cmd-alt-p)
add log: key(ctrl-alt-l)
google that: key(ctrl-alt-g)
tab new: key(cmd-n)

meta: key(alt-/)
sel meta: key(alt-shift-/)
sel top: key(ctrl-o)
sel line: key(ctrl-l)
(curser | cursor): key(cmd-d)
sel flip: key(cmd-shift-\)
go forward: key(ctrl-shift--)
go back: key(ctrl--)
go middle: key(alt-m)
go top: key(alt-t)
go bottom: key(alt-b)
# definition: key(f12)
toggle scope: key(cmd-shift-\)


# debugger
by bug: "byebug"
quokka: "quokka"
break next: key(fn-f10)
break in: key(fn-f11)
break out: key(fn-shift-f11)
break big: key(fn-f5)
break stop: key(shift-fn-f5)
break restart: key(cmd-shift-fn-f5)

toggle output: user.vscode("workbench.action.output.toggleOutput")
toggle search details: user.vscode("workbench.action.search.toggleQueryDetails")

# code run without debugging
code run: key(ctrl-alt-n)
code stop: key(ctrl-alt-m)

# ember
ember relevant: key(cmd-shift-r)
rails relevant: key(alt-r)
bread crumb: key(cmd-shift-.) 
# alt-left and alt-right - to navigate the bread crumbs

command set up worker: "message = JSON.parse(JSON.stringify(message));"
git blame: user.vscode("gitlens.toggleFileBlame")
toggle wrapper: key(cmd-')

regex till new line: "(.|\\n)*"