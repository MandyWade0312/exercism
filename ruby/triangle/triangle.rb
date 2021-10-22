=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle

  def initialize(sides)
    @sides = sides
    if illegal?
      @sides = []
    end
  end

  def equilateral?
    @sides.uniq.size == 1
  end

  def isosceles?
    @sides.uniq.size.between?(1, 2)
  end

  def scalene?
    @sides.uniq.size == 3
  end

  private
  def illegal?
    impossible_length_side? || violates_inequality?
  end

  def violates_inequality?
    a, b, c = @sides
    a + b <= c || a + c <= b || b + c <= a
  end

  def impossible_length_side?
    @sides.any? {|side| side <= 0}
  end
  
end