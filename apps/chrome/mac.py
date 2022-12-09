from talon import Context, actions, ui
from talon.mac import applescript

ctx = Context()
ctx.matches = r"""
os: mac
app: chrome
"""

@ctx.action_class('user')
class UserActions:
	def find_toggle_match_by_regex():            actions.key('ctrl-shift-f')

@ctx.action_class("app")
class AppActions:
    def tab_next():
        actions.key("cmd-alt-right")

    def tab_previous():
        actions.key("cmd-alt-left")