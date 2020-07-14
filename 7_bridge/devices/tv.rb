# concrete implementation class that fulfills the Device interface

class Tv
  def change_speaker_volume(volume)
    puts("TV builtin speaker volume changed to #{volume}.")
  end

  def change_antenna_frequency(frequency)
    puts("TV satellite antenna frequency changed to #{frequency}.")
  end
end
