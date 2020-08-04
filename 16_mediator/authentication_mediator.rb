# this is a concrete mediator implementation
# serving a purpose of the authentication dialog

require_relative "./components/input_field"
require_relative "./components/password_field"
require_relative "./components/button"

class AuthenticationMediator
  def initialize
    @login_field = InputField.new("Username", self)
    @password_field = PasswordField.new(self)
    @button = Button.new("Log in!", self)
  end

  def notify(sender, details)
    raise "Blank username error" if sender == @login_field && details.nil?
    raise "Blank password error" if sender == @password_field && details.nil?
    return unless sender == @button && details == "click"

    puts("Authentication attempt routed to authentication service.")
  end

  def log_in(username, password)
    @login_field.fill_in(username)
    @password_field.fill_in(password)
    @button.click
  end
end
