# this is the implementation class
# it holds all the operations that the abstraction class needs to do its job

class Device
  def change_speaker_volume(volume)
    raise NotImplementedError
  end

  def change_antenna_frequency(frequency)
    raise NotImplementedError
  end
end
