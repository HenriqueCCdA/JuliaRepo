# *********************************************************
def fatorial1(n):
  """"
  Data de criacao  : 08/02/2020
  Data de modificao: 00/00/0000
  --------------------------------------------------------
  fatorial1 : Calculo do fatorial de um numero
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
  if isinstance(n,int) == False: 
    print("Fatorial definido apenas para inteiros!")
    exit(-1) 
  elif n < 0:
    print("Fatorial nao definido para numeros negativos!")
    exit(-1)
  elif n == 0:
    return 1
  else:
    return n*fatorial1(n-1)
# *********************************************************

# *********************************************************
def fatorial2(n):
  """"
  Data de criacao  : 08/02/2020
  Data de modificao: 00/00/0000
  --------------------------------------------------------
  fatorial1 : Calculo do fatorial de um numero
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
  if isinstance(n,int) == False: 
    print("Fatorial definido apenas para inteiros!")
    exit(-1) 
  elif n < 0:
    print("Fatorial nao definido para numeros negativos!")
    exit(-1)
  elif n == 0:
    return 1
  else:
    a = n
    for i in range(n-1,1,-1):
      a=a*i
    return a
# *********************************************************


