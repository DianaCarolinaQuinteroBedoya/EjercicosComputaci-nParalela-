# Estudiante: Diana Carolina Quintero Bedoya
# Correo: diana.quintero01@correo.usa.edu.co
# Carrera: Ciencias de la computación e Inteligencia Artificial
# Fecha: 29 abril 2021
# Ultima Modificación: 5 mayo 2021 
# Docente: John Corredor Pdh
# Materia: Computación paralela y distrribuida
# Universidad Sergio Arboleda
# 
######### Rendimiento Cython/Python ##########
#

from math import exp
import numpy as np

def rbf_network(X, beta, theta):
    N = X.shape[0]
    D = X.shape[1]
    Y = np.zeros(N)

    for i in range(N):
        for j in range(N):
            r = 0
            for d in range(D):
                r += (X[j,d] - X[i, d]) ** 2
            r = r**0.5 
            Y[i] += beta[j] * exp(-(r * theta)**2)
    return Y
