# this is a concrete handler subclass

require_relative "./base_gui_component"

class Button < BaseGuiComponent
  def initialize(next_handler, help_text)
    @help_text = help_text
    super(next_handler)
  end

  def help_content
    return if help_text == "no help"

    help_text
  end

  private

  attr_reader :help_text
end
