class Clock
  attr_reader :hour, :minute
  def self.at(hour, minute)
    Clock.new(hour, minute)
  end

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def to_s
    '%02d:%02d' %
      [
        ((hour + (minute / 60)) % 24),
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