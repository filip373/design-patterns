# this is an abstract base handler class that is used by concrete classes
# it contains the shared boilerplate code to avoid duplication in child classes

class BaseGuiComponent
  def initialize(next_handler)
    @next_handler = next_handler
  end

  def show_help
    help_content || next_or_default
  end

  private

  attr_reader :next_handler

  def next_or_default
    return next_handler.show_help if next_handler

    "there is no help"
  end
end
