class Squares

  def initialize bound
    @last = bound
  end

  def square_of_sum
     ((1 + @last) * @last/2) ** 2
  end

  def sum_of_squares
     @last != 0 ? (1..@last).to_a.map { |n| n**2 }.reduce(:+) : 0
  end

  def difference
     square_of_sum - sum_of_squares
  end
end
