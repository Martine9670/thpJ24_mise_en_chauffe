# Définition de la fonction caesar_cipher qui prend un texte et un décalage
def caesar_cipher(text, shift)
    # On transforme le texte en un tableau de caractères, puis on applique une transformation à chacun
    result = text.chars.map do |char|
      # Si le caractère est une lettre (majuscule ou minuscule)
      if char =~ /[A-Za-z]/
        # Détermine la base du code ASCII : 'A' (65) pour les majuscules, 'a' (97) pour les minuscules
        base = char.ord < 91 ? 'A'.ord : 'a'.ord
        
        # Décale le caractère en respectant l'alphabet (modulo 26), puis reconvertit en caractère
        (((char.ord - base + shift) % 26) + base).chr
      else
        # Si ce n'est pas une lettre (espace, ponctuation, etc.), on le laisse inchangé
        char
      end
    end
  
    # On reconstitue la chaîne à partir du tableau de caractères transformés
    result.join
  end
  
  # Appel de la fonction avec un exemple : "What a string!" et un décalage de 5
  puts caesar_cipher("What a string!", 5)
  # Affiche : "Bmfy f xywnsl!"