# frozen_string_literal: true

require 'octokit'
require 'json'
# Github configurations
class Config
  attr_reader :client, :event_payload

  def initialize
    @client = Octokit::Client.new(access_token: ENV['ACCESS_TOKEN'])
    @event_payload = JSON.parse(File.read(ENV['GITHUB_EVENT_PATH']))
  end
end
