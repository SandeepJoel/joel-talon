insert image:
  "![]()"
  key(left:3)
insert link:  
  text = edit.selected_text()
  user.paste('[{text}]()')
  key(left)
insert command:
  "``"
  key(left)
insert code:
  "``````"
  key(left:3 shift-enter:2 up)
insert code javascript:
  "```js```"
  key(left:3 shift-enter:2 up)
insert horizontal: "---"
insert heading one: "# "
insert heading two: "## "
insert heading three: "### "
# insert reference:
#   "[@]"
#   key(left)
insert italics:
  "**"
  key(left)
insert bold:
  "****"
  key(left:2)
insert task item:
  "- [ ] "