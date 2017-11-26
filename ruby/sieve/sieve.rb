module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    @primes ||=
      nums = (0..@n).to_a
      nums[0] = nums[1] = 0

      (2..Math.sqrt(@n)).each do |sieve|
        unless nums[sieve].zero?
          (2 * sieve).step(@n, sieve).each do |num|
            nums[num] = 0
          end
        end
      end

      nums.select { |num| !num.zero? }
  end
end
