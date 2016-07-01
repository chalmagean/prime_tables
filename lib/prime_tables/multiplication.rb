module PrimeTables
  class Multiplication
    def initialize(size)
      @size = size
      raise ArgumentError, 'Size should be greater than 1' if @size < 1
    end
  end
end
