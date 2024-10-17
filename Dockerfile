# Usar la imagen oficial de Python
FROM python:3.9

# Crear un directorio de trabajo
WORKDIR /app

# Copiar el archivo requirements.txt si lo tienes
COPY requirements.txt ./

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el proyecto Django al contenedor
COPY . .

# Exponer el puerto
EXPOSE 8000

# Comando por defecto para iniciar el servidor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
