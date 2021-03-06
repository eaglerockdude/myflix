class VideosController < ApplicationController

  before_action :get_video, only:[:show]
  before_action :require_login

  def index
    # @videos = Video.all
    @categories = Category.all
  end

  def show

  end

  def search
    @results = Video.search_by_title(params[:search_term])
  end


  private
  def get_video
    @video = Video.find(params[:id])
    @reviews = @video.reviews
  end

end
