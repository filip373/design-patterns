# this is a concrete leaf implementation that implements the PackagePart interface

class Phone
  def initialize(brand)
    @brand = brand
  end

  def unpack
    puts("Unpacked the #{brand} phone.")
  end

  private

  attr_reader :brand
end
