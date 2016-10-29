class Prime

  def self.nth to_nth
      primes = [2]
      natural = 3
      raise ArgumentError, 'there is no zeroth prime' if to_nth == 0
      until primes.count == to_nth do
          primes << natural unless primes.any? {|prime| natural % prime == 0}
          natural += 1
      end
      primes.pop
  end

end
