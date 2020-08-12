require_relative "./rectangle"
require_relative "./circle"
require_relative "./dot"
require_relative "./xml_export_visitor"

shapes = [
  Rectangle.new,
  Circle.new,
  Dot.new,
  Rectangle.new
]
export_visitor = XmlExportVisitor.new

shapes.each do |shape|
  shape.accept(export_visitor)
end
