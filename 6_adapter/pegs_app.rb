require_relative "./round_hole"
require_relative "./round_peg"
require_relative "./square_peg"
require_relative "./round_fitted_square_peg"
require_relative "./triangle_peg"
require_relative "./round_fitted_triangle_peg"

puts("Creating a round hole...")
puts
hole = RoundHole.new(5)

puts("Does bigger round peg fit in the hole?")
bigger_round_peg = RoundPeg.new(9)
puts("#{hole.fits?(bigger_round_peg)}")
puts

puts("Does smaller round peg fit in the hole?")
smaller_round_peg = RoundPeg.new(3)
puts("#{hole.fits?(smaller_round_peg)}")
puts

puts("Does smaller square peg fit in the hole (when not adapted)?")
square_peg = SquarePeg.new(6)
begin
  puts("#{hole.fits?(square_peg)}")
rescue StandardError => e
  puts(e)
  puts("-> Seems like it didn't work")
end
puts

puts("Does smaller square peg fit in the hole (when adapted)?")
adapted1 = RoundFittedSquarePeg.new(square_peg)
puts("#{hole.fits?(adapted1)}")
puts

puts("Does bigger square peg fit in the hole (when adapted)?")
adapted2 = RoundFittedSquarePeg.new(SquarePeg.new(8))
puts("#{hole.fits?(adapted2)}")
puts

puts("Does bigger triangle peg fit in the hole (when not adapted)?")
triangle_peg = TrianglePeg.new(9)
begin
  puts("#{hole.fits?(triangle_peg)}")
rescue StandardError => e
  puts(e)
  puts("-> Seems like it didn't work")
end
puts

puts("Does bigger triangle peg fit in the hole (when adapted)?")
adapted3 = RoundFittedTrianglePeg.new(triangle_peg)
puts("#{hole.fits?(adapted3)}")
puts

puts("Does smaller triangle peg fit in the hole (when adapted)?")
adapted4 = RoundFittedTrianglePeg.new(TrianglePeg.new(3))
puts("#{hole.fits?(adapted4)}")
