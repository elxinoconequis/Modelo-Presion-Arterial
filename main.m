clc
clear all


resultado6 = ecuacion6(1, 2, 3)
resultado7 = ecuacion7(2, 5, 7)
resultado8 = ecuacion8(3, 10, 9)
resultado9 = ecuacion9(1, 4, 8)
resultado10 = ecuacion10(resultado6, resultado7, resultado8, resultado9, 10)
alfa = 3.94487
beta = -9.93656
gamma = 0.89813
lambda = 0.02314
delta = 337.72129

nombre_archivo = "Datos.csv"
miArch = csvread(nombre_archivo)
#arreglo = fscanf(miArch,[5, 6]);
#fclose(miArch)
#arreglo = arreglo;
  #N = input("Dame tu nombre: ")
  #A = input("Dame tu edad: ")
  #T = input("Dame la temperatura corporal [C]: ")
  #W = input("Dame el peso [kg]: ")
  #P = input("Dame el pulso: ")
  #resultado11 = ecuacion11(alfa, A, beta, T, gamma, W, lambda, P, delta)

  #numero_personas = length(miArch)-1
  tamano_tabla = size(miArch)
  numero_personas = tamano_tabla(1)
  numero_variables = tamano_tabla(2)
  bp = zeros(6,1)
  for i=2: numero_personas
    fprintf("\n Persona#%d",i-1, "\n")
    for j=2:numero_variables
      #fprintf("\n   Variable %d: ",j-1,"\n")
      disp(miArch(i,j))
      #disp(miArch(i, j))
      bp(i,1) = ecuacion11(alfa, miArch(i,2), beta, miArch(i,3), gamma, miArch(i,4), lambda, miArch(i,5), delta)
    fprintf("\n")
    endfor

endfor


resultadosbp = [miArch bp]
csvwrite("Resultados.csv",resultadosbp)

