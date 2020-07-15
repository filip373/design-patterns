# this is another composite class that implements the PackagePart interface
# and contains other parts

class BigBox
  def initialize(parts)
    @parts = parts
  end

  def unpack
    puts("Unpacking a big box, it's quite an effort...")
    parts.each(&:unpack)
    puts("Big box unpacked, uff!")
  end

  private

  attr_reader :parts
end
