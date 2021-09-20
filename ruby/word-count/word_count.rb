=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase 
  def initialize(phrase)
    @phrase = phrase
  end

  
  def word_count
    words = @phrase.downcase.gsub(/[,!&@$%^&"=>:.]/, ' ').gsub(/( '|' )/, ' ')
    words_without = words.strip.split(' ')
    my_hash = Hash.new(0)
    words_without.each do |word|
      my_hash[word] += 1
    end
    return my_hash
  end
end