require 'spec_helper'

module PrimeTables
  describe Prime do
    describe '.take' do
      it 'returns a fixed size array of prime numbers' do
        expect(Prime.take(5)).to eq([2, 3, 5, 7, 11])
      end
    end
  end
end
