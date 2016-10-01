class VideosController < ApplicationController

  before_action :get_video, only:[:show]
  before_action :no_front

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
  end


  # if user is already logged in they cannot go to front page
  def no_front
    if logged_in?

    else
      flash[:alert] = "Please register or login first as access is restricted to members only."
      redirect_to root_path
    end
  end


end
