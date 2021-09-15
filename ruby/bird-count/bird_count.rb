class BirdCount
  def self.last_week
    return ary = [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day 
  end

  def yesterday
    count = @birds_per_day.size
    return @birds_per_day[count - 2]
  end

  def total
    return @birds_per_day.sum
  end

  def busy_days
    return @birds_per_day.count { |number| number >= 5 }
  end

  def day_without_birds?
    return @birds_per_day.any? { |number| number == 0 }
  end
end
