class VideosController < ApplicationController

  before_action :get_video, only:[:show]

  def index
    @videos = Video.all
  end

  def show

  end

  private
  def get_video
    @video = Video.find_by(params[:id])
  end

end
