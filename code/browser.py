from talon import Context, actions, Module
import re

ctx = Context()
ctx.matches = r"""
tag: browser
"""

mod = Module()
@mod.action_class
class Actions:
  def extract(text: str):
    """Extract domain values from passed string """
    m = re.match(r"https?:\/\/(.+?\/)", text)
    actions.clip.set_text(m.group(1))

@ctx.action_class("user")
class UserActions:
  def find(text: str):
    """Triggers find """
    actions.key("cmd-f")
    if text:
      actions.insert(text)
  