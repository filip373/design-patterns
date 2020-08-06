# this is a subject (publisher) interface

class MailingCampaign
  def subscribe(mailbox)
    raise NotImplementedError
  end

  def unsubscribe(mailbox)
    raise NotImplementedError
  end
end
