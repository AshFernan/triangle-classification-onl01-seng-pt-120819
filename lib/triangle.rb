class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize ( equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end
  
  def kind
  types_of_triangles
    if equilateral == isosceles && isosceles == scalene
    :equilateral
    elsif equilateral == isosceles || isosceles == scalene || equilateral == scalene
    :isosceles
    else
    :scalene
  end
end

 def types_of_triangles
   true_triangles = [(equilateral+ isosceles > scalene), (equilateral +scalene > isosceles), (isosceles+ scalene > equilateral)]
   [equilateral, isosceles, scalene].each do |side|
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