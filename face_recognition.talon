face(pucker_lips_right): 
  user.mouse_scroll_down_continuous()
face(pucker_lips_right:stop): 
  user.mouse_scroll_stop()

face(pucker_lips_left): 
  user.mouse_scroll_up_continuous()
face(pucker_lips_left:stop): 
  user.mouse_scroll_stop()


# face(presence): 
#   print("p - True")
# face(presence:stop): 
#   print("p - False")

# key(shift-ctrl-f): mode.enable('face')
# key(shift-ctrl-h): mode.disable('face')
# enable face mode: mode.enable('face')
# disable face mode: mode.disable('face')

# Never gets triggered at all
# face(stick_out_tongue):
#   user.mouse_scroll_left_continuous()  
# face(stick_out_tongue:stop): 
#   user.mouse_scroll_stop()

# Gets triggered too much
# face(raise_eyebrows): 
#   user.mouse_scroll_right_continuous()
# face(raise_eyebrows:stop): 
#   user.mouse_scroll_stop()

# Causing problems when I look at monitor above 
# face(eye_wide_left:start): 
#   user.mouse_scroll_right_continuous()
# face(eye_wide_left:stop): 
#   user.mouse_scroll_stop()

# face(mouth_roll_lower):
#   user.mouse_scroll_left_continuous()  
# face(mouth_roll_lower:stop): 
#   user.mouse_scroll_stop()