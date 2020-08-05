# this is an originator class

require_relative "./snapshot"

class Editor
  def initialize
    @text = []
    @window_width = 800
    @window_height = 600
  end

  def resize_window(width, height)
    @window_width = width
    @window_height = height
  end

  def add_text(text)
    @text.push(text)
  end

  def create_snapshot
    Snapshot.new(@text, @window_width, @window_height)
  end

  def restore(snapshot)
    puts(snapshot.text)
    @text = snapshot.text
    @window_width = snapshot.window_width
    @window_height = snapshot.window_height
  end

  def tell_state
    "Current state: #{[@text, @window_width, @window_height]}"
  end
end
