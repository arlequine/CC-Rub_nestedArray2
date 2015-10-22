#Daremos un nuevo paso en nuestro juego de Gato.
#Ya teniendo el tablero y sabiendo crearlo ahora queremos crear un método que cree tableros
#pero que cada vez estos sean diferentes.
class Gato
	#Initialize valuing the variables and places coins
	def initialize 
		@coins = ["X", "O"]
		@places = [[" ", " ", " ",], [" ", " ", " "], [" ", " ", " "]]
	end
	#the format of the lines that divide the spaces occupied given values already defined
	def borde 
		@places.each do |row|
			row.each_with_index do |element, index|
				print " #{element} "
				print "|" unless  index == 2
			end
			puts
		end
	end
	#places that will occupy gradually the values of "X" and "O" as a sequence that will be added in place one by one defninen
	def borde_completo
		x = 0
		o = 0
		token = ["X", "X", "X", "X", "X", "O", "O", "O", "O", "O"].shuffle	
		@places.each do |row|
			row.each_with_index do |element, index|
				row[index]	= token.pop
				puts
				borde
			end
		end
	end
end
#you call class and other methods to be printed one to one
game = Gato.new
game.borde
puts
game.borde_completo