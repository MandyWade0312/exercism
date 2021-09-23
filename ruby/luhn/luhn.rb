=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  
  class << self
    def valid?(number_string)
      return false if number_string.gsub(/\s/, '').length <= 1
      return false if number_string.gsub(/\s/, '') =~ /\D/
      
      number_string.gsub(/\s/, '').split('').reverse.each_with_index.map do |digit, index|
        digit = digit.to_i
        if index.odd?
          digit *= 2
          digit -= 9 if digit > 9
        end
        digit
      end
      .sum % 10 == 0
    end
  end
end