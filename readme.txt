LISTA DEI FILE CONTENUTI NELLE VARIE CARTELLE E COSA FANNO 



C++:
-------------------------------

Vector.cpp (con relativo .h)

	classe di vettori con vari metodi

Particle.cpp (con .h e classe derivata MatPoint)

	particella con massa, carica e nome. Con MatPoint aggiungo posizione e velocita

OdeSolver.cpp (con.h)
	
	risolve eq differenziali. Troviamo implementati 3 metodi, eulero, Rk2, Verlet Velocity. Definire le forte interne ed esterne nel main (funzioni template	).

compito.cpp 
	
	uno dei compiti a casa, calcolo i momenti angolari  e fa il grafico delle orbite dei pianeti del sistema solare. Utile per fare grafici che si aggiornano. 



Matlab:
-------------------------------

HeatProp.m

	esercitazione Matlab, propagazione del calore con impulso da estremo sinistro con temperatura fissata all'estremo destro. Metodo esplicito

calore.m

	uno dei compiti a casa, implementazione del metodo di Crank-Nicolson con la matrice. Matrice funzionante ma il metodo con le formule di parodi non va

condensatore.m
	
	calcolo del potenziale dato la carica (problema di poisson) o dato il potenziale (problema di Laplace) con il metodo di Gauss-Seidel.

