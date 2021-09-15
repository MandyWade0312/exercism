=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(raindrops)
    if raindrops % 3 == 0 && raindrops % 5 == 0 && raindrops % 7 == 0
      return "PlingPlangPlong"
    elsif raindrops % 3 == 0 && raindrops % 5 == 0
      return "PlingPlang"
    elsif raindrops % 3 == 0 && raindrops % 7 == 0
      return "PlingPlong"
    elsif raindrops % 5 == 0 && raindrops % 7 == 0
      return "PlangPlong"
    elsif raindrops % 3 == 0 
      return "Pling"
    elsif raindrops % 5 == 0 
      return "Plang"
    elsif raindrops % 7 == 0 
      return "Plong"
    else
      return "#{raindrops}"
    end  
  end
end