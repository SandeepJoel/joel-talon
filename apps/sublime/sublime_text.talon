os: mac
app.bundle: com.sublimetext.4
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
# tag(): user.snippets
tag(): user.tabs

# NOTE: for Talon's context-sensitive dictation to work properly in Sublime Text,
# you need to set "copy_with_empty_selection": false in your settings.

bar switch: key(cmd-k cmd-b)

file hunt [<user.text>]:
    key(cmd-p)
    insert(text or "")

file hunt paste:
  key(cmd-p)
  sleep(10ms)
  # Used direct keyboard shortcut for pasting because edit.paste seems to open "none" to the speak to the pasted string
  key(cmd-v)

file hunt select:
  text = edit.selected_text()
  key(cmd-p)
  sleep(10ms)
  insert(text)

reveal [<user.text>]:
    key(cmd-shift-p)
    insert(text or "")

project [<user.text>]:
    key(cmd-ctrl-p)
    insert(text or "")

project symbol [<user.text>]:
    key(cmd-shift-r)
    insert(text or "")

complete: key(ctrl-space)
( comment | uncomment ) that: code.toggle_comment()

# slap: key(cmd-enter)

# navigate through multifile search results
salt that: key(f4)
salt back: key(shift-f4)

# history navigation
go back: key(ctrl--)
forward: key(ctrl-shift--)

^repository | repo$:
    key(cmd-shift-p)
    insert("Sublime Merge: Open Repository")
    key(enter)

# Search through Talon or Python files when editing Talon configuration
hunt pie [<user.text>]$:
    text = text or ""
    user.sublime_text_find_in_project_files(text, "*.py,*.pyi")

hunt talon [<user.text>]$:
    text = text or ""
    user.sublime_text_find_in_project_files(text, "*.talon")

show settings: key(cmd-,)
show shortcuts: 
  key(cmd-shift-p)
  insert("keybindings")
  key(enter)

package control: 
  key(cmd-shift-p)
  insert("package control")
  
define show: key(f12)
define reference: key(shift-f12)
show file sidebar: key(shift-f4)

take word: key(cmd-shift-;)
take line: key(cmd-shift-.)
take character: key(cmd-shift-')
selection: key(ctrl-;)
file copy local: 
  key(cmd-shift-p)
  insert("file copy relative")
  key(enter)
file copy path: 
  key(cmd-shift-p)
  insert("file copy path")
  key(enter)