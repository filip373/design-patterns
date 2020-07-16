# this is another (complex) 3rd party library class

class AudioMixer
  def initialize(codec, bitrate)
    @codec = codec
    @bitrate = bitrate
  end

  def mix_channels(channels)
    puts("Mixing #{channels} channels for #{codec} codec with #{bitrate} bitrate.")
  end

  def apply_compression(record)
    puts("Compression is applied to #{record}.")
  end

  def apply_eq(eq, record)
    puts("#{eq} equalization is applied to #{record} record.")
  end

  private

  attr_reader :codec, :bitrate
end
