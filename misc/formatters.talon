^transform <user.formatters> file hunt$:
  formated_text = user.get_formatters_reformat_text(user.formatters)
  user.vscode("workbench.action.quickOpen")
  sleep(25ms)
  insert(formated_text)
