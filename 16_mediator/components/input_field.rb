# this is a reusable gui component which communicates with mediator

class InputField
  def initialize(prompt, mediator)
    @prompt = prompt
    @mediator = mediator
  end

  def fill_in(text)
    puts("'#{text}' filled in input field.")
    @mediator.notify(self, text)
  end
end
