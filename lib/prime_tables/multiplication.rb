module PrimeTables
  class Multiplication
    attr_reader :size

    def initialize(size)
      @size = size
      raise ArgumentError, 'Size should be greater than 1' if @size < 1
    end

    def render
      primes.map do |y|
        primes.map { |x|  y * x }.unshift(y)
      end.unshift([0, *primes])
    end

    private

      def primes
        # Cache the result so we only calculate the prime numbers once
        @primes ||= Prime.take(size)
      end
  end
end