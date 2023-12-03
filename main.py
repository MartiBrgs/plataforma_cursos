import sqlite3

"""
Creando o abriendo base de datos
"""
db_name = 'plataforma.db'

conn = sqlite3.connect(database=db_name)

cursor = conn.cursor()

"""
Leyendo el archivo models.sql con los modelos para la base de datos
"""
if False:
    sql_file = 'models.sql'

    # Leer el contenido del archivo SQL
    with open(sql_file, 'r') as file:
        sql_script = file.read()

    # ejecutar el contenido (script) del archivo sql
    cursor.executescript(sql_script)

    conn.commit()

"""
Ingresando datos de prueba
"""
if True:
    data_file = 'data.sql'
    with open(data_file, 'r') as file:
        sql_script = file.read()

    cursor.executescript(sql_script)
    conn.commit()

# cerrando conexion a la base de datos
conn.close()
