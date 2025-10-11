code.language: javascript
code.language: typescript
code.language: javascriptreact
code.language: typescriptreact
-

state null else: " ?? "

interpolate: user.insert_between('${', '}')
interpolate that:
  text = edit.selected_text()
  user.paste("${{{text}}}")
insert log: user.insert_between('console.log(', ')')

# react specific
# react {user.react_hooks}:
#   user.insert_react_hook_snippet(react_hooks)

pass as prop:
  text = edit.selected_text()
  insert("{text}={{{text}}}")

dot length: ".length"

dot {user.code_common_method} lamb da:
    user.cursorless_insert_snippet(".{code_common_method}(($args) => ($value))")
dot {user.code_common_method} block:
    user.cursorless_insert_snippet(".{code_common_method}(function($args) {{\n\t$body\n}})")

funk {user.code_common_function} lamb da:
    user.cursorless_insert_snippet("{user.code_common_function}(($args) => ($value))")

funk {user.code_common_function} block:
    user.cursorless_insert_snippet("{user.code_common_function}(function($args) {{\n\t$body\n}})")


dot reduce:
    user.cursorless_insert_snippet(".reduce(function(accumulator, value) {{\n\t\t$body\n\t}}, initialValue)")

dot test: user.cursorless_insert_snippet(".test(/$regex/)")