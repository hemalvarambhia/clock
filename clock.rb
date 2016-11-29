Clock = Class.new

class Clock
  def self.at(hour, minute)
    the_hour = if minute == 60 
                 hour + 1
               else
                 hour
               end

    '%02d:%02d' % [(the_hour % 24), minute % 60 ]
  end
end