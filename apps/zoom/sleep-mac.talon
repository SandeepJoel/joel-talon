os: mac
app: zoom.us
mode: sleep
-

^zoom toggle$: 
  speech.enable()
  key(cmd-shift-a) 