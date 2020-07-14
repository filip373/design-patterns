# this is yet another concrete class that implements the device interface
# and is compatible with remote abstraction

class OldTv
  def change_speaker_volume(volume)
    puts("Changing the old TV volume to #{volume}.")
  end

  def change_antenna_frequency(frequency)
    puts("Changing the old TV ground receiver frequency to #{frequency}.")
  end
end
