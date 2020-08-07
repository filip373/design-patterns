# this is a context class that uses states

require_relative "./ready_state"

class AudioPlayer
  def initialize
    @state = ReadyState.new(self)
    @playing = false
  end

  def change_state(new_state)
    @state = new_state
  end

  def click_lock
    @state.click_lock
  end

  def click_play
    @state.click_play
  end

  def click_next
    @state.click_next
  end

  def click_previous
    @state.click_previous
  end

  def playing?
    @playing
  end

  def start_playback
    puts("Playback started")
    @playing = true
  end

  def stop_playback
    puts("Playback stopped")
    @playing = false
  end

  def next_song
    puts("Playing next song")
  end

  def previous_song
    puts("Playing previous song")
  end

  def fast_forward(time)
    puts("Fast-forwarding by #{time}")
  end

  def rewind(time)
    puts("Rewinding by #{time}")
  end
end
