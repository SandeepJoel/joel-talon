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
<user.operator> spread: "..."

# react specific
react {user.react_hooks}:
  user.insert_react_hook_snippet(react_hooks)

chain length: ".length"
chain {user.code_common_member_function}:
    user.insert_between(".{code_common_member_function}(", ")")
chain {user.code_common_member_function} lamb da:
    user.cursorless_insert_snippet(".{code_common_member_function}(($args) => ($value))")
chain {user.code_common_member_function} block:
    user.cursorless_insert_snippet(".{code_common_member_function}(function($args) {{\n\t$body\n}})")

    # chain {user.code_common_member_function} lamb da <phrase>:
#   name = user.formatted_text(phrase, "PRIVATE_CAMEL_CASE")
#   user.cursorless_insert_snippet(".{code_common_member_function_with_lambda}(({name}) => ($value))")
    # chain {user.code_common_member_function} short:
#     user.insert_between(".{code_common_member_function}(", ")")
# chain {user.code_common_member_function_with_lambda} block <phrase>:
#     name = user.formatted_text(phrase, "PRIVATE_CAMEL_CASE")
#     user.cursorless_insert_snippet(".{code_common_member_function_with_lambda}(({name}) => {{\n\t$body\n}})")
# chain reduce:
#     user.cursorless_insert_snippet(".reduce(\n\t(accumulator, value) => ($value),\n\t$initialValue\n)")
chain reduce:
    user.cursorless_insert_snippet(".reduce(\n\tfunction(accumulator, value) {{\n\t\t$body\n\t}},\n\t$initialValue\n)")
chain test:
  user.cursorless_insert_snippet(".test(/$regex/)")
# chain reduce short:
#     user.cursorless_insert_snippet(".reduce($function, $initialValue)")