# this is a client code using iterator class
# the collection type is abstracted away

class SocialSpammer
  def initialize(message)
    @message = message
  end

  def spam_them_all(iterator)
    while iterator.has_more?
      profile = iterator.get_next
      spam_profile(profile)
    end
  end

  private

  attr_reader :message

  def spam_profile(profile)
    puts("Send a '#{message}' message to #{profile}.")
  end
end
