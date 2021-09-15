class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed == 1 || @speed == 2 || @speed == 3 || @speed == 4
      return @speed * 221
    elsif @speed == 5 || @speed == 6 || @speed == 7 || @speed == 8
      return (@speed * 221) * 0.9
    elsif @speed == 9
      return (@speed * 221) * 0.8
    elsif @speed == 10
      return (@speed * 221) * 0.77
    end
  end

  def working_items_per_minute
    if @speed == 1 || @speed == 2 || @speed == 3 || @speed == 4
      return ((@speed * 221) / 60).floor
    elsif @speed == 5 || @speed == 6 || @speed == 7 || @speed == 8
      return (((@speed * 221) * 0.9) / 60).floor
    elsif @speed == 9
      return (((@speed * 221) * 0.8) / 60).floor
    elsif @speed == 10
      return (((@speed * 221) * 0.77) / 60).floor 
    end
  end
end
