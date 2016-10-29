class Hamming
  def self.compute s1, s2
    dist = 0
    if s1.length != s2.length
      raise ArgumentError
    end
    s1.chars.each_with_index {|v, i| dist+=1 if v != s2[i]}
    dist
  end
end
