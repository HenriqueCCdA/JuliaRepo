using Printf 

""""
Data de criacao  : 03/02/2020
Data de modificao: 00/00/0000
--------------------------------------------------------
fat : Calculo do fatorial de um numero
--------------------------------------------------------
paramentro de entra:
--------------------------------------------------------
n - numero inteiro
--------------------------------------------------------
paramentro de saida:
--------------------------------------------------------
nenhum
--------------------------------------------------------
valor de retorno
--------------------------------------------------------
fatorial do numero n
--------------------------------------------------------
OBS:
--------------------------------------------------------
"""
function fat1(n)
    if !(n isa Int64)
        error("Fatorial definido apenas para inteiros!")
    elseif n < 0
        error("Fatorial nao definido para numeros negativos!")
    elseif n == 0
        return 1
    else
        return n*fat1(n-1)
    end
end

""""
Data de criacao  : 03/02/2020
Data de modificao: 00/00/0000
--------------------------------------------------------
fat : Calculo do fatorial de um numero
--------------------------------------------------------
paramentro de entra:
--------------------------------------------------------
n - numero inteiro
--------------------------------------------------------
paramentro de saida:
--------------------------------------------------------
nenhum
--------------------------------------------------------
valor de retorno
--------------------------------------------------------
fatorial do numero n
--------------------------------------------------------
OBS:
--------------------------------------------------------
"""
function fat2(n)
    if !(n isa Int64)
        error("Fatorial definido apenas para inteiros!")
    elseif n < 0
        error("Fatorial nao definido para numeros negativos!")
    elseif n == 0
        return 1
    else       
      a = n  
      for i = (n-1):-1:2
        a=a*i
      end
      return a
    end
end


function main(nSample)
    local a1,a2 # variaveis dentro de um loop estão aparentemente em outro escopo
                # como se fossem uma funcao
    n  = 20
    for i = 0:nSample-1
      a1 = fat1(n)            
      a2 = fat2(n)
    end
    s = @sprintf("Fatorial de %d! eh %d.",n,a1)
    println(s)
    s = @sprintf("Fatorial de %d! eh %d.",n,a2)
    println(s)
end

nSample = 100000000
@time main(nSample)
