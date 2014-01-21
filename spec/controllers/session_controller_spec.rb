require 'spec_helper'

describe SessionsController do
  describe "GET #new" do
    it 'renders sessions/new' do
      get :new
      response.should render_template :new
    end
  end

  describe "POST #create" do
    before {session[:user_id] = nil}
    context 'authorized' do
      let(:user) {FactoryGirl.create(:user)}
      it 'creates session' do
        post :create, email: user.email
        session[:user_id].should be(user.id)
      end

      it 'redirects to root' do
        post :create, email: user.email
        response.should redirect_to(root_path)
      end
    end

    context 'unauthorized' do

    end
  end

  describe "POST #destroy" do
    before {session[:user_id] = 12}
    it 'deletes session' do
      delete :destroy, id: 'current'
      session[:user_id].should be_nil
    end
  end
end
