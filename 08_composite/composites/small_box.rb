# this is a composite class which implements the PackagePart interface
# and contains other package parts

class SmallBox
  def initialize(parts)
    @parts = parts
  end

  def unpack
    puts("Unpacking a small box...")
    parts.each(&:unpack)
    puts("Small box unpacked.")
  end

  private

  attr_reader :parts
end
