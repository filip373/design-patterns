# this is a concrete collection class

require_relative "./facebook_iterator"

class Facebook
  def initialize(connections)
    @connections = connections
  end

  def contacts(profile_id, type)
    puts("Sending a request to facebook...")
    connections.dig(profile_id, type) || []
  end

  def create_friends_iterator(profile_id)
    FacebookIterator.new(self, profile_id, :friends)
  end

  def create_coworkers_iterator(profile_id)
    FacebookIterator.new(self, profile_id, :coworkers)
  end

  private

  attr_reader :connections
end
