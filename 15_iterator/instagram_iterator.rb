# this is another concrete iterator class

class InstagramIterator
  def initialize(instagram, profile_id, type)
    @instagram = instagram
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

  attr_reader :instagram, :profile_id, :type, :current_position

  def cached_contacts
    @cached_contacts ||= instagram.contacts(profile_id, mapped_type(type))
  end

  def mapped_type(type)
    case type
    when "friends" then 1
    when "coworkers" then 2
    else 0
    end
  end
end
