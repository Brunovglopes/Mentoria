#Importação da biblioteca para a criação da tabela aleatoria 
import random
#declaração das listas necessarias
numbers = [] 
list_ord = []

for x in range(0,101): #looping para a criação da lista de 0 a 100
    numbers.append(x)
    
list = random.sample(numbers,10) #Seleciona aleatoriamente 10 numeros da lista "numbers" e asmazena na variavel
list_ord = sorted(list) #Ordena a lista e armazena na variavel
print("Lista original",list, "\nLista Ordenada",list_ord) #cospe a lista ordenada e a lista original 
   
        