# this is a concrete visitor implementation

require_relative "./visitor"

class XmlExportVisitor < Visitor
  def visit_dot(dot)
    puts("Exporting dot: #{dot}...")
  end

  def visit_circle(circle) 
    puts("Exporting circle: #{circle}...")
  end

  def visit_rectangle(rectangle)
    puts("Exporting rectangle: #{rectangle}...")
  end
end
