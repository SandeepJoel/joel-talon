semi: ";"
dot space: ". "
spam: ", "
single arrow: " -> "
double arrow: " => "
inside angle: 
	insert("<>") 
	key(left)
inside literal: 
	insert("``") 
	key(left)
inside liquid: 
	insert("<%%>") 
	key(left left)
inside pipe: 
	insert("||") 
	key(left)
empty (a ray| list):
  insert("[]")
empty brace:
  insert("{}")

inside handle: 
	insert("{{{{")
handle that:
  text = edit.selected_text()
  user.paste("{{{{{text}}}}}")
command that:
  text = edit.selected_text()
  user.paste('`{text}`')
italic that:
  text = edit.selected_text()
  user.paste('*{text}*')
liquid that:
  text = edit.selected_text()
  user.paste('<%{text}%>')
bold that:
  text = edit.selected_text()
  user.paste('**{text}**')
link that:
  text = edit.selected_text()
  user.paste('[{text}]()')
  key(left)