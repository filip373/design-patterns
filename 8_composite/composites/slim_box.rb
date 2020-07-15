# this is yet another composite implementation, subclass of existing one

class SlimBox < SmallBox
  def unpack
    puts("Unpacking slim box, gonna need some scissors first...")
    super
  end
end
