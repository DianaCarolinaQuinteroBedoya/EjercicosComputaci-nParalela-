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

all:
	python3 setup.py build_ext --inplace
clean:
	rm -rf build *.so CyfunctionE.c



