require 'spec_helper'

describe Tea do
  it 'is named Granny' do
    tea = Tea.new name: 'Granny'
    tea.name.should == 'Granny'
  end

  it 'validates presence of name' do
    tea = Tea.new
    tea.should_not be_valid
  end

  it 'validates name uniqueness' do
    Tea.create! name: 'Granny'
    other_granny = Tea.new name: 'Granny'
    other_granny.should_not be_valid
  end

  it 'should return name as to_s' do
    tea = Tea.new name: 'Granny'
    tea.to_s.should == 'Granny'
  end
end
