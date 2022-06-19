win.title:/repl/
win.title:/Talon - REPL/
-

^test sleep:
  user.insert_between("import time;time.sleep(5);sim('", "')")

^test sleep <phrase>$:
  insert("import time;time.sleep(5);sim('{phrase}')")
  key(enter)