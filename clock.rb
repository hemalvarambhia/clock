Clock = Class.new

class Clock
  def self.at(hour, minute)
    '%02d:%02d' % [((hour + (minute / 60)) % 24), minute % 60 ]
  end
end