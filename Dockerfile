# Utiliser une image de base Python
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY app.py /app
COPY requirements.txt /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par Flask
EXPOSE 5000

# Commande de lancement
CMD ["python", "app.py"]
