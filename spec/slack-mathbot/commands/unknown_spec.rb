require 'spec_helper'

describe SlackRubyBot::Commands::Unknown, vcr: { cassette_name: 'user_info' } do
  def app
    SlackMathbot::App.new
  end
  it 'invalid command' do
    expect(message: 'mathbot foobar').to respond_with_slack_message("Sorry <@user>, I don't understand that command!")
  end
  it 'does not respond to sad face' do
    expect(SlackRubyBot::Commands::Base).to_not receive(:send_message)
    SlackMathbot::App.new.send(:message, text: ':((')
  end
end
