from talon import Context, actions, Module
import re

ctx = Context()
ctx.matches = r"""
tag: browser
"""

mod = Module()
@mod.action_class
class Actions:
  def copyDomain(text: str):
    """Extract domain values from passed string """
    m = re.match(r"https?:\/\/(.+?)(\/)", text)
    actions.clip.set_text(m.group(1))

  def copyPath(text: str):
    """Extract url path values from passed string """
    m = re.match(r"https?:\/\/(.+?)(\/.*)", text)
    actions.clip.set_text(m.group(2))

  def copyLeaf(text: str):
    """Extract url path values from passed string """
    m =  re.search(r"([^/]+)$", text)
    actions.clip.set_text(m.group(1))

  def removeDomain(text: str):
    """highlight domain values from passed string """
    m = re.match(r"(https?:\/\/)(.+?)(\/.*)", text)
    actions.user.insert_between(m.group(1), m.group(3))
    
  def removeEndPath(text: str):
    """highlight url path values from passed string """
    m = re.match(r"(https?:\/\/)(.+?)(\/.*)", text)
    actions.insert(m.group(1) + m.group(2))
  