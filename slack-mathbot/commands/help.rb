module SlackMathbot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        client.say(channel: data.channel, text: 'See https://github.com/ajokela/slack-mathbot, please.')
      end
    end
  end
end
