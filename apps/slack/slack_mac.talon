os: mac
app: slack
-
tag(): user.messaging
tag(): user.emoji
tag(): user.find_and_replace

settings():
  user.mouse_continuous_scroll_amount = 30

go back: user.slack_go_back()
forward: user.slack_go_forward()

