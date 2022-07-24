win.title:/repl/
win.title:/Talon - REPL/
-

^inspect sleep:
  user.insert_between("import time;time.sleep(5);sim('", "')")

^inspect sleep <phrase>$:
  insert("import time;time.sleep(5);sim('{phrase}')")
  key(enter)