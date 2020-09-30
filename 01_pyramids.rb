def hauteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu"
	print ">"
	h = gets.chomp.to_i	
	return h
end


def espace
	print " "
	 
end

def etoile
	print "#"
	
end


def full_pyramid
	pyramide = hauteur 
	count = 0
	while pyramide > 0
		a = pyramide
		b = 0

		while (a)> 0
			espace			
			a = a-1
		end
		while b <= (count*2)
			etoile
			b = b + 1
		end
		pyramide = pyramide - 1
		count = count + 1
		puts
	end
	
end

full_pyramid
