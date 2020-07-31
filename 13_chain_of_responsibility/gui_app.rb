require_relative "./dialog"
require_relative "./button"
require_relative "./panel"

puts("Clicking on a no-help button...")
component1 = Button.new(Dialog.new(nil, "dialog help"), "no help")
puts(component1.show_help)

puts("Clicking on a button with help...")
component2 = Button.new(Dialog.new(nil, "dialog help"), "button help")
puts(component2.show_help)

puts("Clicking on a single no-help button with default fallback...")
component3 = Button.new(nil, "no help")
puts(component3.show_help)

puts("Clicking on a no-help button inside panel...")
component4 = Button.new(Panel.new(nil), "no help")
puts(component4.show_help)
