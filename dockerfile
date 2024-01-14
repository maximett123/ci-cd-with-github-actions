# Démarrez à partir d'une image de base Python (choisissez la version appropriée)
FROM python:3.9

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de dépendances et installez-les
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copiez le reste du code source de votre application dans le conteneur
COPY . .

EXPOSE 5000

ENV FLASK_APP=app.py


# Commande pour exécuter l'application
CMD ["python", "./app.py"]