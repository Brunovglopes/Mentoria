
palavra = input("Digite uma palavra: ") #solicita ao usuario a palavra ou frase
inversao ="" #variavel para armazenar a palavra ou frase invertida
for x in palavra[::-1]: #looping começando do final ao começo 
    inversao +=x #armazena 'x' na variavel 
print(inversao) #cospe a palavra invertida 