from talon import Context, Module, actions 

ctx = Context()
ctx.matches = r"""
app: iterm2
os: mac
"""

@ctx.action_class("user")
class UserAction:
  def page_up():
    actions.key('shift-pageup')
  def page_down():
    actions.key('shift-pagedown')