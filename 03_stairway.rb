def dice
	dice_roll_result = 1 + rand(6)
end

def jeu 
	marche = 0
	tour = 0
	while marche < 10
				
		x = dice
		if x == 5 || x == 6
			marche = marche + 1
			puts " ==> Avancez d'une marche, vous êtes sur la marche #{marche}"
		end
		if x == 1 
			if marche == 0
				puts "== vous êtes sur la marche == #{marche}"
			else
			marche = marche - 1
			puts "<== Reculez d'une marche, vous êtes sur la marche #{marche}"
			end
		end
		if x == 2 || x == 3 || x == 4
			puts "== vous êtes sur la marche == #{marche}"
		end
		tour = tour + 1
	end
	return tour
end

def average_finish_time
	somme_tour = 0
	tour = 0
	nb_parti = 0
	while nb_parti < 100
		tour = jeu
		somme_tour = somme_tour + tour
		nb_parti = nb_parti + 1
	end	
	moyenne = somme_tour / nb_parti
	puts "NOMBRE DE TOUR #{somme_tour}"
		puts "MOYENNE DE TOUR #{moyenne}"

end

average_finish_time