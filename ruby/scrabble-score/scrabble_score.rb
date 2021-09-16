=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  score = 0
  letters = new.split('')
  def score 
    if letters == 'A' || 'E' || 'I' || 'O' || 'U' || 'L' || 'N' || 'R' || 'S' || 'T' 
      score += 1
    elsif letters == 'D' || 'G'
      score += 2
    elsif letters == 'B' || 'C' || 'M' || 'P'
      score += 3
    elsif letters == 'F' || 'H' || 'V' || 'W' || 'Y'
      score += 4
    elsif letters == 'K' 
      score += 5
    elsif letters == 'J' || 'X' 
      score += 8
    elsif letters == 'Q' || 'Z' 
      score += 10
    end
    return score
  end

 
end