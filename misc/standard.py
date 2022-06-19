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