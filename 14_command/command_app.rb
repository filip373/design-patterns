require_relative "./button"
require_relative "./input_field"
require_relative "./save_command"
require_relative "./copy_command"
require_relative "./header_text"
require_relative "./delete_command"

puts("Testing a save-button...")
Button.new("green", SaveCommand.new).click
puts

puts("Testing a copy-button...")
Button.new("blue", CopyCommand.new).click
puts

puts("Testing a save-input-field...")
InputField.new(SaveCommand.new).submit("saved field")
puts

puts("Testing a copy-input-field...")
InputField.new(CopyCommand.new).submit("copied field")
puts

puts("Testing a copy-header-text...")
HeaderText.new("important news", CopyCommand.new).highlight
puts

puts("Testing a delete-header-text...")
HeaderText.new("fake news", DeleteCommand.new).highlight
puts
