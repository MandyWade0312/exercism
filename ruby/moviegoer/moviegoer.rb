# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  attr_reader :age, :member

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    age >= 60 ? 10 : 15
  end

  def watch_scary_movie?
    age >= 18 ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    unless member == true  
      raise NotMovieClubMemberError
    else 
      "🍿"
    end
  end
end
