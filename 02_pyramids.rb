def hauteur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? ( choisis un nombre impair)"
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


def wtf_pyramide
	pyramide = hauteur
	if pyramide.even?
		puts "J'ai dit un nombre impair"
	else	
		count_haut = 0
		while pyramide > 0
			a = pyramide
			b = 0

			while (a)> 0
				espace			
				a = a-1
			end
			while b <= (count_haut*2)
				etoile
				b = b + 1
			end
			pyramide = pyramide - 1
			count_haut = count_haut + 1
			puts
		end
		count_bas = 0
		while count_haut >= 0	
			c = 0
			pyramide = 0
			while pyramide < (count_bas)
				espace
				pyramide = pyramide + 1
			end 
			while c <= (count_haut*2)
				etoile
				c = c + 1		
			end
			count_haut = count_haut - 1
			count_bas = count_bas + 1
			puts
		end
	end	
end


wtf_pyramide

