# this is a concrete class which implements the publisher interface

require_relative "./mailing_campaign"

class RubyNewsletter < MailingCampaign
  def initialize
    @subscribers = []
  end

  def send_new_issue(content)
    advertise_new_issue(content)
    notify_subscribers(content)
  end

  def subscribe(mailbox)
    @subscribers.push(mailbox)
  end

  def unsubscribe(mailbox)
    @subscribers.delete(mailbox)
  end

  private

  def advertise_new_issue(content)
    puts("Content '#{content}' advertised on the website.")
  end

  def notify_subscribers(content)
    @subscribers.each do |subscriber|
      subscriber.notify(content)
    end
  end
end
