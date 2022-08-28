tag: user.javascript
-
(<user.operator> | is) strict equal: " === "
(<user.operator> | is) strict not equal: " !== "
<user.operator> null else: " ?? "

interpolate: user.insert_between('${', '}')
interpolate that:
  text = edit.selected_text()
  user.paste("${{{text}}}")
insert log: user.insert_between('console.log(', ')')

# react specific
react {user.react_hooks}:
  user.insert_react_hook_snippet(react_hooks)
