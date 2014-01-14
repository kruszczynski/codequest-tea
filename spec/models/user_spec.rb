require 'spec_helper'

describe User do
  it 'validates presence of email' do
    bob = User.new
    bob.should_not be_valid
  end

  it 'validates uniqueness of email' do
    User.create! email: 'bob@bob.com'
    bob = User.new email: 'bob@bob.com'
    bob.should_not be_valid
  end

end
