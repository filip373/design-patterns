require "./facades/mix_video"
require "./facades/video_stream"

puts("Mixing my new video...")
MixVideo.
  new("video of me in the zoo").
  mix("my_video.mp4")
puts

puts("Streaming another video...")
VideoStream.
  new("video of my birthday").
  start_streaming("http://youtube.com/birthday")
