class Clock
  attr_reader :minute
  def self.at(hour, minute)
    Clock.new(minute + (60 * hour))
  end

  def initialize(minute)
    @minute = minute
  end

  def to_s
    '%02d:%02d' %
      [
        (minute / 60) % 24,
        minute % 60
      ]
  end

  def +(minute)
    @minute += minute

    self
  end

  def ==(other)
    to_s == other.to_s
  end
end

module BookKeeping
  VERSION = 2
end