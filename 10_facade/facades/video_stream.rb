# this is another facade class for the (complex) 3rd party library

require_relative "../complex_3rd_party_lib/codec_factory"
require_relative "../complex_3rd_party_lib/video_file"

class VideoStream
  def initialize(video)
    @video = video
  end

  def start_streaming(url)
    VideoFile.new.read(video)
    codec_factory = CodecFactory.new("mp4")
    codec_factory.decode(video)
    codec_factory.analyze(video)
    puts("The video stream starts at #{url}")
  end

  private

  attr_reader :video
end
