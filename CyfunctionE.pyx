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
#cython: lenguaje_level=3
#from math import exp
cdef extern from "math.h":
        double exp(double x)
        double pow(double x, double y)

cdef extern from "math.h":
        double pow(double x, double y)

import numpy as np
cimport numpy as cnp 

def rbf_network(cnp.ndarray[cnp.double_t, ndim=2] X, cnp.ndarray[cnp.double_t, ndim=1] beta, int theta):
    cdef int i
    cdef int j
    cdef int d
    cdef double r
    cdef int N = X.shape[0]
    cdef int D = X.shape[1] 
    cdef cnp.ndarray[cnp.double_t, ndim=1] Y 
    Y = np.zeros(N)     
    for i in range(N):
        for j in range(N):
            r = 0
            for d in range(D):
                r += pow((X[j,d] - X[i, d]),2)
            r = pow(r, 0.5) 
            Y[i] += beta[j] * exp(pow(-(r * theta),2))
    return Y

