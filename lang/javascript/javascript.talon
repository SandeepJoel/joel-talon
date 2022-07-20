tag: user.javascript
-

interpolate: user.insert_between('${', '}')
interpolate that:
  text = edit.selected_text()
  user.paste("${{{text}}}")

# react specific
react {user.react_hooks}:
  user.insert_react_hook_snippet(react_hooks)

insert log: user.insert_between('console.log(', ')')