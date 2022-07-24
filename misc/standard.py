from talon import Context, Module, actions 

ctx = Context()
mod = Module()
ctx.matches = r"""
os: mac
"""

@mod.capture(rule="<user.modifiers> <user.keys>")
def modifier_with_keys(m) -> str:
  "Provides modifier key combinations that is expected by mac like 'alt-e alt-f' "
  result = ""
  for individual_key in m.keys.split():
    result += m.modifiers + "-" + individual_key + " "
  return result

@mod.action_class
class Actions:
  def page_up():
    """Scrolling up in a Reliable Fashion """
    actions.key('pageup')

  def page_down():
    """Scrolling down in a Reliable Fashion """
    actions.key('pagedown')