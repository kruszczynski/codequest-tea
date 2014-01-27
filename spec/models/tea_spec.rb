require 'spec_helper'

describe Tea do
  it {should validate_presence_of(:name)}

  it {should validate_uniqueness_of(:name)}

  let(:tea) {FactoryGirl.create(:tea)}

  it 'to_s should return tea name' do
    tea.to_s.should == 'Granny'
  end
end
