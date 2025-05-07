def is_multiple_of_3_or_5(n)
    # Vérifie si un nombre est un multiple de 3 ou de 5
    # L'opérateur % calcule le reste de la division de n par 3 ou 5. Si le reste est égal à 0, alors c'est un multiple.
    n % 3 == 0 || n % 5 == 0
  end
  
  def sum_of_3_or_5_multiples(final_number)
    # Vérifie que final_number est un entier naturel
    # Si final_number n'est pas un entier ou si c'est un entier négatif, renvoie un message d'erreur
    if !final_number.is_a?(Integer) || final_number < 0
      return "Yo ! Je ne prends que les entiers naturels. TG."
    end
  
    # Initialisation de la somme totale à 0
    total_sum = 0
  
    # Parcours des nombres de 0 à final_number - 1
    (0...final_number).each do |current_number|
      # Si le nombre courant est un multiple de 3 ou 5, on l'ajoute à la somme totale
      if is_multiple_of_3_or_5(current_number)
        total_sum += current_number
      end
    end
  
    # Renvoie la somme totale des multiples de 3 ou 5
    return total_sum
  end

  
  # Tests
  puts sum_of_3_or_5_multiples(10)  # Sortie : 23
  puts sum_of_3_or_5_multiples(11)  # Sortie : 33
  puts sum_of_3_or_5_multiples(0)   # Sortie : 0
  puts sum_of_3_or_5_multiples(3)   # Sortie : 0
  puts sum_of_3_or_5_multiples(-1)  # Sortie : "Yo ! Je ne prends que les entiers naturels. TG."
  puts sum_of_3_or_5_multiples(1.23) # Sortie : "Yo ! Je ne prends que les entiers naturels. TG."
  puts sum_of_3_or_5_multiples("chiffre") # Sortie : "Yo ! Je ne prends que les entiers naturels. TG."
  