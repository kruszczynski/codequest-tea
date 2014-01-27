require 'spec_helper'

describe SessionsController do
  describe "GET #new" do
    it 'renders sessions/new' do
      get :new
      response.should render_template :new
    end
  end

  describe "POST #create" do
    before :each do
      session[:user_id] = nil
    end
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

      it 'flashes a notice' do
        post :create, email: user.email
        flash[:notice].should eq('Logged in')
      end
    end

    context 'unauthorized' do
      let(:email) {'a@ba.com'}
      it 'flashes an alert' do
        post :create, email: email
        flash.now[:alert].should eq("email #{email} not found")
      end
    end
  end

  describe "POST #destroy" do
    before {session[:user_id] = 12}
    before {delete :destroy, id: 'current'}
    it 'deletes session' do
      session[:user_id].should be_nil
    end

    it 'redirects to root' do
      response.should redirect_to(root_path)
    end

    it 'flashes a notice' do
      flash[:notice].should eq('Logged out')
    end
  end
end
