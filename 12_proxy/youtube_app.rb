require_relative "./youtube_lib.rb"
require_relative "./cached_youtube_lib.rb"

puts("Using plain youtube lib...")
youtube_lib = YoutubeLib.new

puts("Let's download something...")
puts(youtube_lib.download_video(1))

puts("Let's download something else...")
puts(youtube_lib.download_video(2))

puts("Let's download it again...")
puts(youtube_lib.download_video(2))

puts("Using caching youtube lib...")
cached_youtube_lib = CachedYoutubeLib.new

puts("Let's download something...")
puts(cached_youtube_lib.download_video(1))

puts("Let's download something else...")
puts(cached_youtube_lib.download_video(2))

puts("Let's download it again...")
puts(cached_youtube_lib.download_video(2))
