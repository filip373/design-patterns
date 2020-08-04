require_relative "./authentication_mediator"

authentication_mediator = AuthenticationMediator.new
authentication_mediator.log_in("johny", "secret123")
puts

begin
  authentication_mediator.log_in(nil, "secret1234")
rescue StandardError => e
  puts e
  puts
end

begin
  authentication_mediator.log_in("johny", nil)
rescue StandardError => e
  puts e
  puts
end
