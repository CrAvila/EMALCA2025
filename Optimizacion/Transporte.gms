$title Transporte Carlos-Avila

Sets

i Almacenes 
j Paises de Destino 
;

Parameters
e(i) Existencias en Almacen i
d(j) Demanda del pais j
c(i, j) Coste de enviar un Contenedor del Almacen i al Pais j
;

Variables
Q(i, j) Cantidad a enviar del Almacen i al Pais j (Contenedores)
N(j) Cantidad no Suministrada en el pais j
;

Variables
Z1 Valor del Primer Objetivo
Z2 Valor del Segundo Objectivo
;

Integer Variable Q, N;


Equations
inventario(i) no superar el nivel de inventario
demanda(j) demanda de cada pais
objetivo1 demanda no satisfecha
objetivo2 coste de transporte
;

inventario(i).. sum(j, Q(i, j)) =L= e(i);
demanda(j).. sum(i, Q(i, j)) + N(j) =E= d(j);
objetivo1.. Z1 =E= sum(j, N(j));
objetivo2.. Z2 =E= sum((i,j), c(i, j)*Q(i,j));


Model Uno /inventario, demanda, objetivo1/;
Model Dos /all/;

$include 'datos.gms'

Solve Uno minimizing Z1 using MIP;
Z1.fx=Z1.l;
solve Dos minimizing Z2 using MIP;