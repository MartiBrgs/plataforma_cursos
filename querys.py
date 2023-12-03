import sqlite3

"""
Creando o abriendo base de datos
"""
db_name = 'plataforma.db'

conn = sqlite3.connect(database=db_name)

cursor = conn.cursor()
# Cantidad de usuarios suscritos
query1 = ''

# Cantidad de usuarios que jamás han tomado curso
query2 = ''

# Cantidad de usuarios siguiendo un curso ahora
query3 = ''

# Lista de usuarios inactivos
query4 = ''

# Listas profesores y los cursos realizados
query5 = ''

# Ranking de profesores con más estudiantes
query6 = ''

# Frecuencia en que se conectan profesor con usuario/estudiante
query7 = ''

# Cantidad de dinero ingresada en el mes
query8 = ''

# Cantidad de cursos terminados
query9 = ''

# Porcentaje terminado de cada curso por usuario
query10 = ''

# Porcentaje medio y desv. estandar terminado de cada curso
query11 = ''

# Agrupar los alumnos de un curso por país
query12 = ''

# Encontrar paises con mayor participación en cada curso
query13 = ''

# Listar los métodos de pago preferido y rankear por país
query14 = ''

# Listar las ofertas con mayor adherencia
query15 = ''

# Edad promedio de los usuarios por curso
query16 = ''

# Edad promedio de los usuarios por país
query17 = ''

conn.close()