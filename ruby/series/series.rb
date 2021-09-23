=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series

  def initialize(series)
    @series = series
  end  

  def slices(num)
    if num > @series.length
      raise ArgumentError
    end

    series = @series
    array = []
    until series.length < num
      array << series[0..num-1]
      series = series[1..-1]
    end
  array
  end
end