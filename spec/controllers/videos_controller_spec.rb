require 'spec_helper'

describe VideosController do
  describe "GET show"  do

    it "sets the @video instance variable"  do
      session[:user_id] = Fabricate(:user).id
      @video = Fabricate(:video)
      get :show, id: @video
      expect(assigns(:video)).to eq(@video)
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
