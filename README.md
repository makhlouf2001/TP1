# TP1/ ex 5

# Les commandes Docker utilisées:
C:\Users\marie>cd C:\Users\Marie\Documents\ex5

C:\Users\marie\Documents\ex5>dir
 Le volume dans le lecteur C s’appelle Windows
 Le numéro de série du volume est 6030-6388
# Le contenu du dossier: 
 Répertoire de C:\Users\marie\Documents\ex5

05/09/2025  08:28    <DIR>          .
05/09/2025  08:23    <DIR>          ..
05/09/2025  08:46               201 app.py
05/09/2025  08:46               388 Dockerfile
05/09/2025  08:48                 5 requirements.txt
               3 fichier(s)              594 octets
               2 Rép(s)  90 195 058 688 octets libres

# la construction de l'image:
C:\Users\marie\Documents\ex5>docker build -t flask-docker-app .
[+] Building 11.6s (10/10) FINISHED                    docker:desktop-linux
 => [internal] load build definition from Dockerfile                   0.0s
 => => transferring dockerfile: 427B                                   0.0s
 => [internal] load metadata for docker.io/library/python:3.10-slim    0.6s
 => [internal] load .dockerignore                                      0.0s
 => => transferring context: 2B                                        0.0s
 => [internal] load build context                                      0.0s
 => => transferring context: 78B                                       0.0s
 => [1/5] FROM docker.io/library/python:3.10-slim@sha256:420fbb0e468d  6.0s
 => => resolve docker.io/library/python:3.10-slim@sha256:420fbb0e468d  0.0s
 => => sha256:7732878f45d9e71f91ce50493915297cca1bde3 1.29MB / 1.29MB  2.1s
 => => sha256:3a195ff1e16155a2ca71eee2cc2c4e467119c644d03 250B / 250B  1.7s
 => => sha256:396b1da7636e2dcd10565cb4f2f952cbb4a8a 29.77MB / 29.77MB  4.7s
 => => sha256:72e8e193aa94d19c7f1bcbc00737a83d1906b 14.10MB / 14.10MB  3.2s
 => => extracting sha256:396b1da7636e2dcd10565cb4f2f952cbb4a8a38b58d3  0.7s
 => => extracting sha256:7732878f45d9e71f91ce50493915297cca1bde392445  0.1s
 => => extracting sha256:72e8e193aa94d19c7f1bcbc00737a83d1906bcc1e519  0.4s
 => => extracting sha256:3a195ff1e16155a2ca71eee2cc2c4e467119c644d036  0.0s
 => [2/5] WORKDIR /app                                                 0.3s
 => [3/5] COPY app.py /app                                             0.0s
 => [4/5] COPY requirements.txt /app                                   0.0s
 => [5/5] RUN pip install --no-cache-dir -r requirements.txt           3.3s
 => exporting to image                                                 1.1s
 => => exporting layers                                                0.7s
 => => exporting manifest sha256:d2d68031cfffb54c2172e32c7fafde289254  0.0s
 => => exporting config sha256:cedac4beeb92da3b26677ab2d2c664040fe2a9  0.0s
 => => exporting attestation manifest sha256:8885ace13ae14286bdff2dc7  0.0s
 => => exporting manifest list sha256:5dbf803f480408ccfe2dcb44de03033  0.0s
 => => naming to docker.io/library/flask-docker-app:latest             0.0s
 => => unpacking to docker.io/library/flask-docker-app:latest          0.2s

 # Test de l'application en local 
 http://localhost:5000

# Le lancement du conteneur: 
C:\Users\marie\Documents\ex5>docker run -d -p 5000:5000 flask-docker-app
f412ea3b6cb5683e3a34e350a557340a512429209b76852304ddadae4e0d11c8

# Les commandes GIT utilisées:

# Initialisation de depot en local
git init
git branch -m main

# L'ajout des fichiers et le commit 
git add .
git commit -m "commited"

# La laison avec le repo GitHub
git remote add origin https://github.com/makhlouf2001/TP1.git

# L'envoie sur GitHub
git push -u origin main

