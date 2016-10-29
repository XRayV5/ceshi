class Grains

  def self.square nth_sqr
    2 ** (nth_sqr-1)
  end

  def self.total
    square(65) - 1
  end

end
