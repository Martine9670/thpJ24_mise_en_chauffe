# Vérifie si un nombre est un multiple de 3 ou de 5
# L'opérateur % calcule le reste de la division de n par 3 ou 5. Si le reste est égal à 0, alors c'est un multiple.

def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0
end
    
  def sum_of_3_or_5_multiples(final_number)
    final_sum = 0 # cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  
          # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
    (0...final_number).each do |current_number|
      if is_multiple_of_3_or_5?(current_number)
          # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
        final_sum += current_number
      end
          # si la réponse est "false"… ben y a pas de else : ce "current_number" n'est pas multiple,
          # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    end
  
    return final_sum # on retourne la variable qui contient la somme du tout
  end