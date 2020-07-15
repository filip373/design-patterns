# this is another leaf class that implements the PackagePart interface

class Ipad
  def initialize(screen_size)
    @screen_size = screen_size
  end

  def unpack
    puts("Unpacked the Ipad of #{screen_size} screen size.")
  end

  private

  attr_reader :screen_size
end
