# this is a concrete iterator class

class FacebookIterator
  def initialize(facebook, profile_id, type)
    @facebook = facebook
    @profile_id = profile_id
    @type = type
    @current_position = 0
  end

  def get_next
    return unless has_more?

    contact = cached_contacts[current_position]
    @current_position = current_position + 1
    contact
  end

  def has_more?
    current_position < cached_contacts.length
  end

  private

  attr_reader :facebook, :profile_id, :type, :current_position

  def cached_contacts
    @cached_contacts ||= facebook.contacts(profile_id, type)
  end
end
