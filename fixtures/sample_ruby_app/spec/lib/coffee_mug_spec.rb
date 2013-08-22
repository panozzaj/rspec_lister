require 'spec_helper'
require 'coffee_mug'

describe CoffeeMug do
  describe '#heat_level' do
    let(:mug) { CoffeeMug.new }
    it 'should be pretty hot' do
      mug.heat_level.should == 99
    end
  end
end
