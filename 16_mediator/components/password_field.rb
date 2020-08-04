# this is a reusable gui component which communicates with mediator

class PasswordField
  def initialize(mediator)
    @mediator = mediator
  end

  def fill_in(password)
    puts("Password *** filled in input field.")
    @mediator.notify(self, password)
  end
end
