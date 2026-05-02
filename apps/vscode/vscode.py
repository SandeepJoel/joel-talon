from talon import Context, Module, actions

ctx = Context()
mod = Module()

ctx.matches = r"""
app: vscode
"""

@mod.action_class
class Actions:
  def selected_text_single_line() -> str:
    """Returns selected text with newlines replaced by spaces"""
    return actions.edit.selected_text().replace("\n", " ")
