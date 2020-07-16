# this is yet another decorator class

class NotifiedDocument
  def initialize(document, channel)
    @document = document
    @channel = channel
  end

  def write(content)
    send_notification(content)
    document.write(content)
  end

  private

  attr_reader :document, :channel

  def send_notification(content)
    puts("#{channel}: Writing a new content '#{content}'.")
  end
end
