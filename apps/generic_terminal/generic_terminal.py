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
        actions.insert('/Users/sjoel/.talon/.venv/bin/tail_log ; exit;')
        actions.key('enter')

    def open_repl():
        actions.insert('/Users/sjoel/.talon/.venv/bin/repl ; exit;')
        actions.key('enter')
