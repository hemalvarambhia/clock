class Clock
  attr_reader :minute
  def self.at(hour, minute)
    Clock.new(minute + (60 * hour))
  end

  def initialize(minute)
    @minute = minute
  end

  def to_s
    '%02d:%02d' % [ hour_hand, minute_hand ]
  end

  def +(minute)
    @minute += minute

    self
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def hour
    minute / 60
  end

  def hour_hand
     hour % 24
  end

  def minute_hand
    minute % 60
  end
end

module BookKeeping
  VERSION = 2
end