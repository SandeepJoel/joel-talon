app: vscode
-
# tag(): user.emoji
# tag(): user.npm
# tag(): user.yarn
# tag(): user.git

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
forward: user.vscode("workbench.action.navigateForward")

# personalised actions and extensions
collapse files: user.vscode("workbench.files.action.collapseExplorerFolders") 
clear output: key(cmd-alt-u)
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
sel flip: user.vscode("vscodeSelectionFlip.flip")
(curser | cursor): key(cmd-d)
go middle: key(alt-m)
go top: key(alt-t)
go bottom: key(alt-b)
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
replace confirm all: key(cmd-alt-enter)

toggle fire: user.vscode("cursorless.toggleDecorations")

# code run without debugging
code run: key(ctrl-alt-n)
code stop: key(ctrl-alt-m)

# ember
ember relevant: key(cmd-shift-r)
rails relevant: key(alt-r)
# Use `alt-left` and `alt-right` to navigate the bread crumb

command setup worker: "message = JSON.parse(JSON.stringify(message));"
git blame: user.vscode("gitlens.toggleFileBlame")
toggle wrapper: key(cmd-')

regex till new line: "(.|\\n)*"
# image preview: user.vscode("svgPreview.showPreviewToSide")
name: mouse_scroll(-150)
soap: mouse_scroll(150)