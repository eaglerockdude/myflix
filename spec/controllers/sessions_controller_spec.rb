require 'spec_helper'

describe SessionsController do
# GET/ NEW action
  describe 'GET #new' do
    it 'renders the #new template if user clicks front page signin button' do
      get :new
      expect(:response).to render_template :new
    end
  end

    it 'redirects to home_path(index) if logged in' do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(:response).to redirect_to home_path
    end


# POST / CREATE set the session to the user.id
  describe 'POST create' do
    context 'valid credentials' do
      it 'loads session user_id' do
        ken = Fabricate(:user)
        post :create,  email: ken.email, password: ken.password
        expect(session[:user_id]).to eq(ken.id)
      end
      it 'flashes a welcome message' do
        ken = Fabricate(:user)
        post :create,  email: ken.email, password: ken.password
        expect(flash[:success]).to_not be_blank
      end
      it 'redirects to home(index) path' do
        ken = Fabricate(:user)
        post :create,  email: ken.email, password: ken.password
        expect(response).to redirect_to home_path
      end
    end

    context 'with INVALID credentials' do
      it 'redirects un-authenticated user to login_path'  do
        ken = Fabricate(:user)
        post :create,  email: ken.email, password: "garbagexxx"
        expect(response).to redirect_to login_path
      end
      it 'flashes login error' do
        ken = Fabricate(:user)
        post :create,  email: ken.email, password: "invalidpassword"
        expect(flash[:error]).to_not be_blank
      end
    end
  end

  describe 'GET #destroy'  do
    it 'clears the session id'  do
    session[:user_id] = Fabricate(:user).id
    get :destroy
    expect(session[:user_id]).to be_nil
    end
  end

end

