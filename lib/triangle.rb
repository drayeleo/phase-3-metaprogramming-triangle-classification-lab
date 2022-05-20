# come back to this after metaprogramming section

class Triangle
  # write code here

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if test_validity
      if @length1 == @length2 && @length2 == @length3
        :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length3 == @length1
        :isosceles
      elsif @length1 != @length2 && @length2 != @length3 && @length3 != @length1
        :scalene
      end
    else 
      # TriangleError::foo
    end
  end

  def test_validity
    if @length1 > 0 && @length2 > 0 && @length3 > 0 && @length1 + @length2 > @length3 && @length3 + @length2 > @length1 && @length1 + @length3 > @length2
      true
    else false
    end
  end

  class TriangleError < StandardError
    # triangle error code
    
    # def self.foo
    #   raise "error"
    # end
  end
end
