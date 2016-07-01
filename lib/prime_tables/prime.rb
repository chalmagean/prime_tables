module PrimeTables
  class Prime
    def self.take(size)
      primes = []
      n = 2

      while primes.size < size do
        primes << n
        n = next_prime(n)
      end

      primes
    end

    private

      def self.next_prime(number)
        next_number = number + 1
        next_number += 1 until prime?(next_number)
        next_number
      end

      def self.prime?(number)
        return false if number <= 1

        # Here's more info about the math:
        # http://stackoverflow.com/questions/5811151/why-do-we-check-upto-the-square-root-of-a-prime-number-to-determine-if-it-is-pri
        Math.sqrt(number).to_i.downto(2).each do |i|
          return false if number % i == 0
        end
      end
  end
end
