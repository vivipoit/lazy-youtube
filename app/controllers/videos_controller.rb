# frozen_string_literal: true

class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    flash_message = @video.save ? { notice: 'Video created.' } : { alert: 'Problems creating video.' }
    redirect_to root_path, flash_message
  end

  private

  def video_params
    params.require(:video).permit(:name, :youtube_id)
  end
end
