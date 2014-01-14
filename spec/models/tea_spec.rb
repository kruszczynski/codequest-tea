require 'spec_helper'

describe Tea do
  it 'validates presence of name' do
    tea = Tea.new
    tea.should_not be_valid
  end

  it 'validates uniqueness of name' do
    Tea.create! name: 'Granny'
    other_granny = Tea.new name: 'Granny'
    other_granny.should_not be_valid
  end

  it 'to_s should return tea name' do
    tea = Tea.new name: 'Granny'
    tea.to_s.should == 'Granny'
  end
end
