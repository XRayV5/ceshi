
class Pangram

  ALPHABET = "abcdefghijklmnopqrstuvwxyz"
  def self.is_pangram? text
    ALPHABET == text.downcase.scan(/[a-z]/).uniq.sort.join
  end

end
