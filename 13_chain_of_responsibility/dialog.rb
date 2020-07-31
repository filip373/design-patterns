# this is another concrete handler subclass

require_relative "./base_gui_component"

class Dialog < BaseGuiComponent
  def initialize(next_handler, tooltip)
    @tooltip = tooltip
    super(next_handler)
  end

  def help_content
    tooltip
  end

  private

  attr_reader :tooltip
end
