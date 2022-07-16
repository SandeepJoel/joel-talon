marky image:
  "![]()"
  key(left:3)
marky link:  
  text = edit.selected_text()
  user.paste('[{text}]()')
  key(left)
marky command:
  "``"
  key(left)
marky code:
  "``````"
  key(left:3 shift-enter:2 up)
marky code javascript:
  "```js```"
  key(left:3 shift-enter:2 up)
marky horizontal: "---"
marky heading one: "# "
marky heading two: "## "
marky heading three: "### "
# marky reference:
#   "[@]"
#   key(left)
marky italics:
  "**"
  key(left)
marky bold:
  "****"
  key(left:2)
marky task item:
  "- [ ] "