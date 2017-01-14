require 'spec_helper'

describe UsersController do

  # NEW action
  describe 'GET #new' do
    it 'assigns a new user instance to @user variable' do
      get :new
      expect(assigns(:user)).to be_an_instance_of(User)
    end
  end
  # POST action
  describe 'POST #create' do
    it 'sets the instance variable @user' do
      post :create, user: Fabricate.attributes_for(:user)
      expect(assigns(:user)).to be_an_instance_of(User)
    end
# POST VALID
    context 'with valid input' do
      it 'creates a user' do
        Fabricate(:user)
        expect(User.count).to eq(1)
      end

      it 'redirects to the sign-in page'  do
        post :create, user: Fabricate.attributes_for(:user)
        expect(response).to redirect_to login_path
      end
    end
# POST INVALID
    context 'with invalid input' do
      it 'does not create a user' do
        post :create, user:{email:' ',password:'password',full_name:'kenneth d mcfadden'}
        expect(User.count).to eq(0)
      end
      it 're-renders to :new template'  do
        post :create, user:{email:' ',password:'password',full_name:'kenneth d mcfadden'}
        expect(response).to render_template :new
      end
    end

  end   #post create

end #main
