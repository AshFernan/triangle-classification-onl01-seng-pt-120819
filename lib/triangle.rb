class Triangle
  attr_accessor :eq, :is, :sc
  
  def initialize ( eq, is, sc)
    @eq = eq
    @is = is
    @sc= sc
  end
  
  def kind
  types_of_triangles
    if eq == is && is == sc
    :equilateral
    elsif eq == is || is == sc || eq == sc
    :isosceles
    else
    :scalene
  end
end

 def types_of_triangles
   true_triangles = [(eq + is > sc), (eq + sc > is), (is + sc > eq)]
   [eq, isosceles, scalene].each do |side|
     true_triangles<< false if side <=0
     raise TriangleError if true_triangles.include?(false)
   end
  end
  
 class TriangleError < StandardError 
   
   def message
    "There's an error in your equation!"
    end
  end
end