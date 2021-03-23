
require 'octokit'

class Action
  attr_reader :client, :repo, :comment_id

  def initialize(config)
    @client = config.client
    payload = config.event_payload
    @repo = payload['repository']['full_name']
    @comment_id = payload['comment']['id']
  end

  def add_reaction(reaction)
    client.create_issue_comment_reaction(repo, comment_id, reaction)
  end
end
