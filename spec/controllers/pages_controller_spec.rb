require 'spec_helper'

describe PagesController do
  describe 'GET #index' do
    context 'current user exists' do
      before :each do
        controller.stub(:authorize).and_return(true)
      end
      it 'redirects to teas path' do
        get :index
        response.should redirect_to(teas_path)
      end
    end

    context 'no current user' do
      it 'redirects to sessions#new' do
        get :index
        response.should redirect_to(new_session_path)
      end
    end
  end
end
