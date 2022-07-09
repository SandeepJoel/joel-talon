from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: mac
"""
edit = actions.edit

@ctx.action_class("user")
class UserActions:
  def find(text: str):
    """Triggers find """
    actions.key("cmd-f")
    if text:
      actions.insert(text)