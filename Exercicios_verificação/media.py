

def calculo_media(liste): #passa como parametro a lista
    return sum(liste)/len(liste) #retorna á função o valor da sentencia 

liste = [27,10,25,5,85,63,74] #cria a lista
media = calculo_media(liste) # armazena o resultado da função na variavel
print("{:.2f}".format(media)) # cospe a media e delimita para 2 casas depoius da virgula