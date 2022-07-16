tag: browser
-
settings():
  user.rango_start_with_direct_clicking = 1


close tab final [<number_small>]:
  user.rango_command_without_target("closeTabsRightEndInWindow", number_small or 1)
close tab last [<number_small>]:
  user.rango_command_without_target("closePreviousTabsInWindow", number_small or 1)
close tab next [<number_small>]:
  user.rango_command_without_target("closeNextTabsInWindow", number_small or 1)
close tab first [<number_small>]:
  user.rango_command_without_target("closeTabsLeftEndInWindow", number_small or 1)
close tab final [<number_small>]:
  user.rango_command_without_target("closeTabsRightEndInWindow", number_small or 1)