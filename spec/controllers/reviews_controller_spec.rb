require 'spec_helper'

describe ReviewsController do

  describe 'POST #create' do

    context 'with authenticated user'
      context 'with valid input' do

       it 'creates a review' do
         session[:user_id] = Fabricate(:user).id
         review = Fabricate(:review)
         post :create, Fabricate.attributes_for(:review)
         expect(Review.count).to eq(1)
       end
       it 're-directs to the video show page' do
         video = Fabricate(:video)
         post :create, review: Fabricate.attributes_for(:review),
              video_id: video.id
         expect(response).to redirect_to video
       end
       it 'creates a review associated with a video'
       it 'creates a review associated with a the signed in user'
       it 're-directs to the video show page'
      end
      context 'with invalid input'
    context 'with un-authenticated user'

  end
end