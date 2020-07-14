# this is another concrete implementation class fulfilling the Device interface

class Radio
  def change_speaker_volume(volume)
    puts("Changed the radio AUX output volume to #{volume}")
  end

  def change_antenna_frequency(frequency)
    puts("Changed the radio foldable antenna to #{frequency}")
  end
end
