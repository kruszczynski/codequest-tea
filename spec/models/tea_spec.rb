require 'spec_helper'

describe Tea do
  it 'is named Granny' do
    tea = Tea.new name: 'Granny'
    tea.name.should == 'Granny'
  end
end
