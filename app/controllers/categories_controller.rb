class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
  end

  def recent_videos
    # up to first 6

  end

end
