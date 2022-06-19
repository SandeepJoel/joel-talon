from talon import Context, Module, actions 

ctx = Context()
mod = Module()
ctx.matches = r"""
os: mac
"""


@mod.action_class
class Actions:
    def swallow():
        """swallowing word that is to the right side"""
        actions.edit.extend_word_right()
        actions.edit.delete()