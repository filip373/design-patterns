# this is a concrete state

require_relative "./state"
require_relative "./ready_state"
require_relative "./playing_state"

class LockedState < State
  def click_lock
    puts("Unlocking a player...")
    if @player.playing?
      @player.change_state(PlayingState.new(@player))
    else
      @player.change_state(ReadyState.new(@player))
    end
  end

  def click_play
    puts("Play doesn't do anything when locked")
  end

  def click_next
    puts("Next doesn't do anything when locked")
  end

  def click_previous
    puts("Previous doesn't do anything when locked")
  end
end
