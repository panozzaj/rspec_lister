require 'spec_helper'
require 'calculator'

describe Calculator do
  describe '.add' do
    it 'should return 0 if it receives no inputs' do
      Calculator.add.should == 0
    end

    it 'should return the number if it receives just one number' do
      Calculator.add(3).should == 3
    end

    it 'should take two numbers and add them' do
      Calculator.add(3, 4).should == 7
    end

    it 'should take many numbers and add them' do
      Calculator.add(1, 2, 3, 4).should == 10
    end
  end
end
