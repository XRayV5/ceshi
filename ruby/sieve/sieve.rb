class Sieve

  def initialize(up_to)
    @up_to = up_to
  end
  def primes
    @up_to < 2 ? (return []) : list = (2..@up_to).to_a
    non_primes = []
    list.each do |num|
      times = 2
      while num * times <= @up_to
        non_primes << num * times
        times += 1
      end
    end
    list - non_primes.uniq
  end
end
