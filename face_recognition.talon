#defines the commands that sleep/wake Talon
mode: all
-

face(pucker_lips_right): 
  user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop): 
  user.mouse_scroll_stop()

face(pucker_lips_left): 
  user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop): 
  user.mouse_scroll_stop()
# face(stick_out_tongue): "out"
# face(raise_eyebrows): "brow"