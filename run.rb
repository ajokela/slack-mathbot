$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'slack-mathbot'

SlackMathbot::Bot.run

