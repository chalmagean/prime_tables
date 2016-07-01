require 'spec_helper'

module PrimeTables
  describe Multiplication do
    it 'requires a size' do
      expect { Multiplication.new }.to raise_error(ArgumentError)
    end

    it 'the size should be greater than 1' do
      expect { Multiplication.new(0) }.
        to raise_error(ArgumentError, 'Size should be greater than 1')
    end
  end
end
