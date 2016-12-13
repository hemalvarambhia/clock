class Clock
  attr_reader :minutes
  def self.at(hour, minute)
    Clock.new(minute + (60 * hour))
  end

  def initialize(minute)
    @minutes = minute
  end

  def to_s
    '%02d:%02d' % [ hour_hand, minute_hand ]
  end

  def +(minute)
    @minutes += minute

    self
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def hour
    minutes / 60
  end

  def hour_hand
    hour % 24
  end

  def minute_hand
    minutes % 60
  end
end

module BookKeeping
  VERSION = 2
end