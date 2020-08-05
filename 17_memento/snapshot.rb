# this is a memento class

require_relative "./memento"

class Snapshot < Memento
  def initialize(text, window_width, window_height)
    @text = Marshal.load(Marshal.dump(text)) # cloning a string
    @window_width = window_width
    @window_height = window_height
    @date_created = Time.now
  end

  def name
    "Editor snapshot"
  end

  def date
    @date_created
  end

  # these fields are not in the interface
  # they are only known to the originator class
  attr_reader :text, :window_height, :window_width
end
