from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: mac
app: slack
"""
edit = actions.edit

@ctx.action_class("user")
class UserActions:
  def find_everywhere(text: str):
    """Triggers find in all channels"""
    actions.key("cmd-g")
    actions.sleep("50ms")
    edit.extend_line_start()
    edit.delete()    
    if text:
      actions.insert(text)