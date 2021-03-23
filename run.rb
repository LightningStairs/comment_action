require_relative 'lib/config'
require_relative 'lib/action'

def run
  config = Config.new
  case config.event_name
  when 'issue_comment'
    puts 'Pull request commented.'
    Action.new(config).add_reaction('confused')
  else
    puts "Event #{config.event_name} is triggered. No action called."
  end
end

run
