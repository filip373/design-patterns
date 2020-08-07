# this is a base state class

class State
  def initialize(player)
    @player = player
  end

  def click_lock
    raise NotImplementedError
  end

  def click_play
    raise NotImplementedError
  end

  def click_next
    raise NotImplementedError
  end

  def click_previous
    raise NotImplementedError
  end
end
