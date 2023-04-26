tag: browser
-
settings():
  user.rango_start_with_direct_clicking = 1
tab quit last [<number_small>]:
  user.rango_command_without_target("closePreviousTabsInWindow", number_small or 1)
tab quit next [<number_small>]:
  user.rango_command_without_target("closeNextTabsInWindow", number_small or 1)