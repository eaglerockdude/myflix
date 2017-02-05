class ReviewsController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    @review = @video.reviews.build(review_params.merge!(user: current_user))

    if @review.save
      flash[:notice] = "Review was added."
      redirect_to video_path(@video)
    else
      #@reviews = @video.reviews.reload
      render 'videos/show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:content,:rating)
  end
end