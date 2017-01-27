require 'spec_helper'

describe VideosController do
  describe "GET show"  do

    it "sets the @video instance variable if authenticated user"  do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      get :show, id: video
      expect(assigns(:video)).to eq(video)
    end

    it "sets the @reviews instance variable for authenticated users"  do
      session[:user_id] = Fabricate(:user).id
      video = Fabricate(:video)
      review1 = Fabricate(:review, video:video)
      review2 = Fabricate(:review, video:video)
      get :show, id:video.id
      expect(assigns(:reviews)).to match_array [review1, review2]
    end

    # it "renders the show template" do
    #   session[:user_id] = Fabricate(:user).id
    #   @video = Fabricate(:video)
    #   get :show, id: @video
    #   expect(response).to render_template :show
    # end

    it "redirects to sign_in page for un-authenticated users"  do
      video = Fabricate(:video)
      get :show, id: video.id
      expect(response).to redirect_to root_path
    end
  end

  describe 'POST search' do
    it 'sets @results for authenticated users'  do
      session[:user_id] = Fabricate(:user).id
      @video = Fabricate(:video, title: "searchdummy")
      post :search , search_term: 'dummy'
      expect(assigns(:results)).to eq([@video])
    end
    it 'redirects to home page for un-authenticated users'  do
      @video = Fabricate(:video, title: "searchdummy")
      post :search , search_term: 'dummy'
      expect(response).to redirect_to root_path
    end
  end

end
