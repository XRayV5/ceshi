require 'time'

class BookKeeping
  VERSION = 4
end
class Gigasecond

  def self.from start
    p Time.at(start.to_i + 1000000000)
  end
end

# .to_time.to_i
