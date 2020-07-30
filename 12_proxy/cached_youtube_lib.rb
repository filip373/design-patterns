# this is a proxy class that adds caching

require_relative "./youtube_lib"

class CachedYoutubeLib
  def initialize
    @youtube_lib = YoutubeLib.new
    @cache = {}
  end

  def download_video(id)
    cached_video(id) || download_and_cache(id)
  end

  private

  attr_reader :youtube_lib, :cache

  def cached_video(id)
    cache[id]
  end

  def download_and_cache(id)
    puts("Downloading...")
    video = youtube_lib.download_video(id)
    cache[id] = video
    video
  end
end
