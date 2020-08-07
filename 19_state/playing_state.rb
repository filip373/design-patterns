# this is another concrete state class

require_relative "./state"
require_relative "./ready_state"
require_relative "./locked_state"

class PlayingState < State
  def click_lock
    puts("Locking the screen...")
    @player.change_state(LockedState.new(@player))
  end

  def click_play
    @player.stop_playback
    @player.change_state(ReadyState.new(@player))
  end

  def click_next
    if @event&.double_click
      @player.next_song
    else
      @player.fast_forward(5)
    end
  end

  def click_previous
    if @event&.double_click
      @player.previous
    else
      @player.rewind(5)
    end
  end
end
