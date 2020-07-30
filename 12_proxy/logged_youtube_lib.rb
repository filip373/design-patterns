# this is a proxy class that adds caching

require_relative "./youtube_lib"

class LoggedYoutubeLib
  def initialize
    @youtube_lib = YoutubeLib.new
  end

  def download_video(id)
    puts("#{Time.now}: Download started")
    video = youtube_lib.download_video(id)
    puts("#{Time.now}: Download finished")
    video
  end

  private

  attr_reader :youtube_lib
end
