=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  
  def initialize(word)
    @word = word
  end
  
  def score
    s_score = 0

    if @word == nil
      s_score = 0
    end
    
    letters = @word.to_s.rstrip.upcase.split('')
    letters.each do |letter|
      if letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U' || letter == 'L' || letter == 'N' ||              letter == 'R' || letter == 'S' || letter == 'T' 
        s_score += 1
      elsif letter == 'D' || letter == 'G'
        s_score += 2
      elsif letter == 'B' || letter == 'C' || letter == 'M' || letter == 'P'
        s_score += 3
      elsif letter == 'F' || letter == 'H' || letter == 'V' || letter == 'W' || letter == 'Y'
        s_score += 4
      elsif letter == 'K' 
        s_score += 5
      elsif letter == 'J' || letter == 'X' 
        s_score += 8
      elsif letter == 'Q' || letter == 'Z' 
        s_score += 10
      end
    end
    return s_score
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end