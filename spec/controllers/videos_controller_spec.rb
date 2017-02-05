require 'spec_helper'

describe VideosController do

  before {set_current_user}

  let(:video) { Fabricate(:video) }
  let(:review) { Fabricate.build(:review) }

  describe "GET show"  do

    it "sets the @video instance variable if authenticated user"  do
      get :show, id: video
      expect(assigns(:video)).to eq(video)
    end

    it "sets the @reviews instance variable for authenticated users"  do
      review1 = Fabricate(:review, video: video)
      review2 = Fabricate(:review, video: video)
      get :show, id: video.id
      expect(assigns(:reviews)).to match_array [review1, review2]
    end

  end

  describe 'POST search' do
    it 'sets @results for authenticated users'  do
      @video = Fabricate(:video, title: "searchdummy")
      post :search , search_term: 'dummy'
      expect(assigns(:results)).to eq([@video])
    end

  end

end
