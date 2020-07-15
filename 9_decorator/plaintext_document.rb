# this is a concrete base class that implements the common Document interface

class PlaintextDocument
  def initialize(filename)
    @filename = filename
  end

  def write(content)
    puts("Written '#{content}' to the #{filename}.")
  end

  private

  attr_reader :filename
end
