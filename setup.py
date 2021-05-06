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

from distutils.core import setup, Extension
from Cython.Build import cythonize
import numpy as np

setup(ext_modules=cythonize("CyfunctionE.pyx"),
    include_dirs=[np.get_include()]
)
