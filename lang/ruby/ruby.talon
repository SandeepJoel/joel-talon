tag: user.ruby
-

interpolate: user.insert_between('#{', '}')
state funk: 'def '
insert log: 'puts '

rails logger debug: 'Rails.logger.debug("variable : #{{variable}}")'

rails logger debug exception: insert('Rails.logger.debug("exception: \\n#{{exception.message}}\\n backtrace: #{{exception.backtrace.join("\\n")}}")')

