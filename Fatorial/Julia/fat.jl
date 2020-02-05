using Printf 

""""
Data de criacao  : 03/02/2020
Data de modificao: 00/00/0000
--------------------------------------------------------
fat : Caclulo do fatorial de um numero
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
fat : Caclulo do fatorial de um numero
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


function main()
    n = 10
    a = fat1(n)
    s = @sprintf("Fatorial de %d! eh %d.",n,a)
    println(s)
    
    a = fat2(n)
    s = @sprintf("Fatorial de %d! eh %d.",n,a)
    println(s)
end

@time begin
    main()
end
