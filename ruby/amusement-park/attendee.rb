class Attendee
  
  def initialize(height)
    return @height = height
  end

  def height
    return @height
  end

  def pass_id
    return @pass_id
  end

  def issue_pass!(pass_id)
    return @pass_id = pass_id
  end

  def revoke_pass!
    return @pass_id = nil
  end
end
