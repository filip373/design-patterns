# this is yet another concrete handler subclass

require_relative "./base_gui_component"

class Panel < BaseGuiComponent
  def help_content
    "this is a main panel window"
  end
end
