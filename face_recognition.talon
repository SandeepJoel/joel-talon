face(pucker_lips_right): 
  user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop): 
  user.mouse_scroll_stop()

face(pucker_lips_left): 
  user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop): 
  user.mouse_scroll_stop()
key(shift-ctrl-f): mode.enable('face')
key(shift-ctrl-h): mode.disable('face')
enable face mode: mode.enable('face')
disable face mode: mode.disable('face')

face(stick_out_tongue): 
  user.mouse_scroll_right_continuous()
face(stick_out_tongue:stop): 
  user.mouse_scroll_stop_horizontal()
face(raise_eyebrows): 
  user.mouse_scroll_left_continuous()
face(raise_eyebrows:stop): 
  user.mouse_scroll_stop_horizontal()