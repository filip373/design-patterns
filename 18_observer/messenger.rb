# this is another subscriber implementation

require_relative "./subscriber"

class Messenger < Subscriber
  def initialize(username)
    @username = username
  end

  def notify(content)
    puts("'#{content}' sent to '#{@username}' via messenger.")
  end
end
