# this is another concrete state

require_relative "./state"
require_relative "./locked_state"
require_relative "./playing_state"

class ReadyState < State
  def click_lock
    puts("Locking player...")
    @player.change_state(LockedState.new(@player))
  end

  def click_play
    @player.start_playback
    @player.change_state(PlayingState.new(@player))
  end

  def click_next
    @player.next_song
  end

  def click_previous
    @player.previous_song
  end
end
