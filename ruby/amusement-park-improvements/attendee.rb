class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    if @pass_id != nil
        return true 
    end
  end

  def fits_ride?(ride_minimum_height)
    if ride_minimum_height <= @height
      return true
    else
      return false
    end
  end

  def allowed_to_ride?(ride_minimum_height)
    if (ride_minimum_height <= @height) && (@pass_id != nil)
      return true
    else  
      return false
    end
  end
end
