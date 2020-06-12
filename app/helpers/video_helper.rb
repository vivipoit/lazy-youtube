module VideoHelper
  def video_thumbnail(video, size = 'sddefault')
    # YouTube thumbnail size options:
    # default	120x90	default
    # medium	320x180	mqdefault
    # high	480x360	hgdefault
    # standard	640x480	sddefault
    # maxres	1280x720	maxresdefault
    "https://img.youtube.com/vi/#{video.youtube_id}\/#{size}.jpg"
  end
end
