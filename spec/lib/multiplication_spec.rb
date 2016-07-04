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

    it 'requires the input to be an integer' do
      expect { Multiplication.new(1.2) }.
        to raise_error(ArgumentError, 'Input should be an integer')
    end

    describe '#render' do
      it 'returns multiplication table as an array' do
        multiplication = Multiplication.new(3)
        allow(Prime).to receive(:take).with(3).and_return([2, 3, 5])
        result = [
          [0, 2, 3, 5],
          [2, 4, 6, 10],
          [3, 6, 9, 15],
          [5, 10, 15, 25]
        ]
        expect(multiplication.render).to eq(result)
      end
    end
  end
end
