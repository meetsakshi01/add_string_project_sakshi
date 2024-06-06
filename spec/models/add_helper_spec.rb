# spec/models/add_helper_spec.rb

require 'rails_helper'

RSpec.describe AddHelper, type: :model do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(AddHelper.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(AddHelper.add('5')).to eq(5)
    end

    it 'returns the sum of two numbers' do
      expect(AddHelper.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(AddHelper.add('1,2,3,4,5,6,7,8,9')).to eq(45)
    end

    it 'handles strings with spaces around the commas' do
      expect(AddHelper.add('1 , 2 , 3')).to eq(6)
    end

    it 'handles extra commas' do
      expect(AddHelper.add(',1,2,')).to eq(3)
    end

    it 'returns the sum in case of negative numbers' do
      expect(AddHelper.add('-1,2,-3')).to eq(-2)
    end

    it 'handles non-numeric values' do
      expect(AddHelper.add('1,a,2')).to eq(3)
    end
  end
end