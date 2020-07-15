# this is yet another leaf implementation

class Macbook
  def initialize(ram)
    @ram = ram
  end

  def unpack
    puts("Macbook with #{ram} unpacked.")
  end

  private

  attr_reader :ram
end
