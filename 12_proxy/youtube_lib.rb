# this is a (3rd party) service which we want to use

class YoutubeLib
  def initialize
    @videos = {
      1 => "me in the zoo",
      2 => "me in the park",
      3 => "me in the pub"
    }
  end

  def download_video(id)
    sleep(1)
    "#{videos[id]} downloaded..."
  end

  private

  attr_reader :videos
end
