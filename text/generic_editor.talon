# find it:
    # edit.find()

next one:
    edit.find_next()

(go word left | draw):
    edit.word_left()

(go word right | spring):
    edit.word_right()

left:
    edit.left()

right:
    edit.right()

up:      
    edit.up()
      
down:
    edit.down()

go line start:
    edit.line_start()

go line end:
    edit.line_end()

(go way left | home):
    edit.line_start()
    edit.line_start()

(go way right | end):
    edit.line_end()

go way down:
    edit.file_end()

go way up:
    edit.file_start()

go bottom:
    edit.file_end()

go top:
    edit.file_start()

# selecting
sel line:
    edit.select_line()

sel all:
    edit.select_all()

sel left:
    edit.extend_left()

sel right:
    edit.extend_right()

sel up:
    edit.extend_line_up()

sel down:
    edit.extend_line_down()

sel word:
    edit.select_word()

(sel word left | kick | cake):
    edit.extend_word_left()

(sel word right | plate):
    edit.extend_word_right()

sel (way left | home):
    edit.extend_line_start()

sel (way right | end):
    edit.extend_line_end()

sel way up:
    edit.extend_file_start()

sel way down:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
clear line:
    edit.delete_line()

clear left:
    key(backspace)

clear right:
    key(delete)

clear up:
    edit.extend_line_up()
    edit.delete()

clear down:
    edit.extend_line_down()
    edit.delete()

clear:
    edit.delete_word()

(clear word left | ditch):
    edit.extend_word_left()
    edit.delete()

(clear word right | swallow):
    edit.extend_word_right()
    edit.delete()

clear way left:
    edit.extend_line_start()
    edit.delete()

clear way right:
    edit.extend_line_end()
    edit.delete()

clear way up:
    edit.extend_file_start()
    edit.delete()

clear way down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()
