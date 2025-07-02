Sets
i Almacenes /Du, Pa, Ca, Gh, It/
j Paises de Destino /Tu, Si, Su, Ye, Mo, Uc/
;

parameters
e(i) existencias en almacen i /Du 50, Pa 30,Ca 10, Gh 15, It 20/
d(j) demanda pais j /Tu 20, Si 15, Su 20, Ye 30, Mo 20, Uc 30/
;

table c(i,j) Coste de enviar un contenedor de almacen i a pais j

    Tu Si  Su Ye  Mo Uc
Du  1  1.5 3  0.5 4  2
Pa  10 15  25 8   30 25
Ca  2  3   4  5   6  3
Gh  4  6   3  4   4  8
It  1  1.5 3  2   8  2
