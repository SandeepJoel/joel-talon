tag: user.find_and_replace
-

hunt this (pace | paste):
  user.find("")
  sleep(25ms)
  edit.paste()
hunt all (pace | paste):
  user.find_everywhere("")
  sleep(25ms)
  edit.paste()