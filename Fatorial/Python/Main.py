import time as tm
import Fat  as myFat


# *********************************************************
def main(nSample):

  n = 20
  for i in range(0,nSample):
    a1 = myFat.fatorial1(n)
    a2 = myFat.fatorial2(n)

  print("Fatorial de {0}! eh {1}".format(n,a1))   
  print("Fatorial de {0}! eh {1}".format(n,a2))
# *********************************************************

if __name__ == "__main__": 
  nSample = 100000000
  time0 = tm.time()
  main(nSample)
  time0 = tm.time() - time0
  print("Time: {0}".format(time0))
 
