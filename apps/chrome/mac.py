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