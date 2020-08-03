# this is a collection interface
# it declares a method for creating iterators
# there might be multiple iterator types

class SocialNetwork
  def create_friends_iterator(profile_id)
    raise NotImplementedError
  end

  def create_coworkers_iterator(profile_id)
    raise NotImplementedError
  end
end
