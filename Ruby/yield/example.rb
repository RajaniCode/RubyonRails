require_relative 'library'
require_relative 'seed'

library = Library.new(GAMES)

library.each_on_system("SNES") { |game| puts game.name }
