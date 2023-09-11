app: vscode
# win.title: ${activeEditorShort}${separator}${rootName}${separator}${profileName}${separator}focus:[${focusedView}]
-
tag(): user.emoji
# tag(): user.npm
# tag(): user.yarn
# tag(): user.git
tag(): user.cursorless_experimental_snippets

reveal [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")
language switch [<user.text>]: 
  user.vscode("workbench.action.editor.changeLanguageMode")
  sleep(25ms)
  insert(user.text or "")
  sleep(25ms)
  key(enter)
file hunt (pace | paste):
  user.vscode("workbench.action.quickOpen")
  sleep(25ms)
  edit.paste()
file hunt select:
  text = edit.selected_text()
  user.vscode("workbench.action.quickOpen")
  sleep(10ms)
  insert(text)
file delete:
  user.vscode("fileutils.removeFile")
  sleep(150ms)
file copy name: user.vscode("fileutils.copyFileName")
file create relative: user.vscode("fileutils.newFile")
file create root: user.vscode("fileutils.newFileAtRoot")
define show: user.vscode("editor.action.revealDefinition")
define peek: user.vscode("editor.action.peekDefinition")
define side: user.vscode("editor.action.revealDefinitionAside")
define type: user.vscode("editor.action.goToTypeDefinition")
forward: user.vscode("workbench.action.navigateForward")
git current file: user.vscode("gitlens.openWorkingFile")
conflict next: user.vscode("merge-conflict.next")
conflict accept current: user.vscode("merge-conflict.accept.current")
conflict accept incoming: user.vscode("merge-conflict.accept.incoming")
conflict accept both: user.vscode("merge-conflict.accept.both")
conflict accept all current: user.vscode("merge-conflict.accept.all-current")
conflict accept all incoming: user.vscode("merge-conflict.accept.all-incoming")
conflict accept all both: user.vscode("merge-conflict.accept.all-both")

# personalised actions and extensions
collapse files: user.vscode("workbench.files.action.collapseExplorerFolders") 
code clear: key(cmd-alt-u)
salt that: key(fn-f4)
salt back: key(shift-fn-f4)

# mark that: key(cmd-alt-k)
mark list: key(cmd-alt-m)
mark next: key(cmd-alt-.)
mark prev: key(cmd-alt-,)
# the below command will delete all bookmarks from all files
mark delete: key(cmd-alt-\) 
comment: key(cmd-/)
insert doc comment: 
  insert("/**")
  key(enter)
project: user.vscode('workbench.action.openRecent')
project [<user.text>]: 
  user.vscode("workbench.action.openRecent")
  insert(user.text)
  key(enter)

google that: key(ctrl-alt-g)
tab (new | nil): key(cmd-n)
toggle tab pin: key(cmd-k shift-enter)
# meta: key(alt-/)
sel meta: key(alt-shift-/)
sel top: key(ctrl-o)
sel line: key(ctrl-l)
sel flip: user.vscode("vscodeSelectionFlip.flip")
go middle: key(alt-m)
go top: key(alt-t)
go bottom: key(alt-b)
toggle scope: key(cmd-shift-\)


# debugger
quokka: "quokka"
by bug: "byebug"
break next: user.vscode("workbench.action.debug.stepOver")
break toggle: user.vscode("editor.debug.action.toggleBreakpoint")
break begin: user.vscode("workbench.action.debug.start")
break in: user.vscode("workbench.action.debug.stepInto")
break out: user.vscode("workbench.action.debug.stepOut")
break big: user.vscode("workbench.action.debug.continue")
break stop: user.vscode("workbench.action.debug.stop")
break attach: user.vscode("extension.pwa-node-debug.attachNodeProcess")
break restart: user.vscode("workbench.action.debug.restart")

toggle output: user.vscode("workbench.action.output.toggleOutput")
toggle search details: user.vscode("workbench.action.search.toggleQueryDetails")
replace confirm all: key(cmd-alt-enter)
dev tools: user.vscode('workbench.action.toggleDevTools')

toggle fire: user.vscode("cursorless.toggleDecorations")

# code run without debugging
code run: key(ctrl-alt-n)
code stop: key(ctrl-alt-m)

# ember
relevant ember: key(cmd-shift-r)
relevant rails: key(alt-r)
emmet wrap this: user.vscode("editor.emmet.action.wrapWithAbbreviation")

# Use `alt-left` and `alt-right` to navigate the bread crumb

command setup worker: "message = JSON.parse(JSON.stringify(message));"
git blame: user.vscode("gitlens.toggleFileBlame")
git discord: user.vscode("git.cleanAll")
toggle wrapper: key(cmd-')

pattern till new line: "(.|\\n)*"
pattern ruby def: "def "

# image preview: user.vscode("svgPreview.showPreviewToSide")
preview markdown: user.vscode("markdown.showPreview")
# name: mouse_scroll(-150)
# frog: mouse_scroll(150)
(num|numb) <user.number_key>: key(number_key)
discard everything: 
  key(cmd-w)
  sleep(50ms)
  key(space)
  sleep(1000ms)
  key(cmd-shift-t)

# navigating in peekDefinition 
pick children: 
  key("right")
  sleep(100ms)
  key("down")
  key("enter")
pick cousin: 
  key("left:2")
  sleep(50ms)
  key("down right")
  sleep(50ms)
  key("down")
pickup cousin: 
  key("left:2")
  sleep(50ms)
  key("up right")
  sleep(50ms)
  key("down")
  
file hunt current folder: 
  user.vscode("copyRelativeFilePath")
  text = clip.text()
  user.vscode("workbench.action.quickOpen")
  sleep(50ms)
  insert("{text}")
  edit.delete_word()
  edit.delete_word()
  insert("/")


git stash apply: user.vscode("git.stashApply")