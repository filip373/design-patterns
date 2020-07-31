require_relative "./button"
require_relative "./input_field"
require_relative "./save_command"
require_relative "./copy_command"

puts("Testing a save-button...")
Button.new("green", SaveCommand.new).click

puts("Testing a copy-button...")
Button.new("blue", CopyCommand.new).click

puts("Testing a save-input-field...")
InputField.new(SaveCommand.new).submit("saved field")

puts("Testing a copy-input-field...")
InputField.new(CopyCommand.new).submit("copied field")
