from talon import Context
ctx = Context()

# Have to make this file more specific then the default knausj_talon\code\keys.py file
ctx.matches = r"""
os: windows
"""

default_alphabet = "air bat cap drum each fine gust harp sit jury crunch look made near old pit quench red sun trap urge vest water plex yank zip".split(
    " "
)
letters_string = "abcdefghijklmnopqrstuvwxyz"
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet
