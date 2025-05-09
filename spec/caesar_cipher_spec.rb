require_relative 'caesar_cipher'

describe '#caesar_cipher' do
  it 'chiffre une chaîne simple avec un décalage positif' do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it 'chiffre une chaîne avec un décalage de 0 (pas de changement)' do
    expect(caesar_cipher("Ruby Test", 0)).to eq("Ruby Test")
  end

  it 'chiffre en respectant les majuscules et minuscules' do
    expect(caesar_cipher("AbC", 1)).to eq("BcD")
  end

  it 'ignore les caractères non alphabétiques' do
    expect(caesar_cipher("Hello, world!", 3)).to eq("Khoor, zruog!")
  end

  it 'gère les décalages supérieurs à 26' do
    expect(caesar_cipher("abc", 29)).to eq("def")
  end

  it 'gère un décalage négatif (déchiffrement)' do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq("What a string!")
  end
end
