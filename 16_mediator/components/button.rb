# this is a reusable gui component which communicates with mediator

class Button
  def initialize(text, mediator)
    @text = text
    @mediator = mediator
  end

  def click
    puts("Button '#{@text}' has been clicked!")
    @mediator.notify(self, "click")
  end
end
