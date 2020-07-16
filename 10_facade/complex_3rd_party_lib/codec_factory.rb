# this is another class of the 3rd party complex library

class CodecFactory
  def initialize(codec_name)
    @codec_name = codec_name
  end

  def encode(record)
    puts("#{record} record is encoded to #{codec_name}.")
  end

  def decode(record)
    puts("#{record} record is decoded from #{codec_name}.")
  end

  def analyze(record)
    puts("#{record} record is analyzed using #{codec_name}.")
  end

  private

  attr_reader :codec_name
end
