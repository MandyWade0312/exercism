=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  def self.of_dna(acids)
    string = []
    array = acids.split('')
    array.each do |acid|
      if acid == 'A'
        string.push('U')
      elsif acid == 'T'
        string.push('A')
      elsif acid == 'G'
        string.push('C')
      elsif acid == 'C'
        string.push('G')
      end
    end
    return string.join('')
  end
end