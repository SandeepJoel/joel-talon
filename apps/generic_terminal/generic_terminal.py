from talon import Context, actions

ctx = Context()
ctx.matches = r"""
tag: terminal
"""

@ctx.action_class('user')
class UserActions:
    def swallow():
        actions.key('alt-d')
@ctx.action_class('menu')
class MenuActions:
    def open_log():
        actions.insert('tail -f ~/.talon/talon.log')
        actions.key('enter')

    def open_repl():
        actions.insert('~/.talon/.venv/bin/repl ; exit;')
        actions.key('enter')
