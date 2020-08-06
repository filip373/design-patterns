# this is a concrete implementation of subscriber

require_relative "./subscriber"

class Mailbox < Subscriber
  def initialize(address)
    @address = address
  end

  def notify(content)
    puts("'#{content}' sent to '#{@address}' by email.")
  end
end
