Clock = Class.new

class Clock
  attr_reader :hour, :minute
  def self.at(hour, minute)
    Clock.new(hour, minute)
  end

  def initialize(hr, min)
    @hour = ((hr + (min / 60)) % 24)
    @minute = min % 60
  end

  def to_s
    '%02d:%02d' % [ hour, minute ]
  end
end
