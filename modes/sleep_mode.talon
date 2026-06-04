mode: sleep
-

# parrot(palate_click):
# 	print("palate_click")
#   speech.enable()

^whisper stop$:
    key(fn-space)
    speech.enable()
    sleep(1500ms)
    edit.extend_word_left()
    edit.extend_word_left()
    edit.extend_word_left()
    edit.delete()
