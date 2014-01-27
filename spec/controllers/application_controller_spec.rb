require 'spec_helper'

describe ApplicationController do
  describe '#current_user' do
    let(:user) {FactoryGirl.create(:user)}
    it 'returns current if present' do
      session[:user_id] = user.id
      subject.send(:current_user).should eq(user)
    end

    it 'returns false if not' do
      subject.send(:current_user).should be_nil
    end
  end

  describe '#authorize' do
    it 'redirects to sessions#new' do
      #subject.send(:authorize).should redirect_to(new_session_path)
    end
  end
end
