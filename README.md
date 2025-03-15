# 🚀 Proyecto Kubernetes  

Este proyecto tiene como objetivo desplegar un servicio web escalable utilizando **Docker** para la creación de contenedores y **Kubernetes** para su administración.  

📌 **Lo que aprenderás en esta actividad:**  
✅ Construcción de imágenes Docker.  
✅ Despliegue y gestión de contenedores en Kubernetes.  
✅ Configuración de escalabilidad automática.  
✅ Pruebas de estabilidad simulando fallos.  
✅ Uso de Infraestructura como Código (**IaC**) con **Ansible** o **Terraform**.  

---

## 🛠 1. Construcción de la imagen Docker  
Ejecuta el siguiente comando en el directorio donde se encuentra tu **Dockerfile**:  
```sh
docker build -t my-app .
```

---

## 🚢 2. Correr el contenedor en Docker  
```sh
docker run -d -p 3000:3000 --name my-app_container my-app
```
🔹 Esto ejecutará la aplicación en el puerto **3000** y asignará el nombre `my-app_container`.

---

## 📤 3. Subir imagen a Docker Hub  
1️⃣ **Inicia sesión en Docker Hub**  
```sh
docker login
```
2️⃣ **Etiqueta la imagen**  
```sh
docker tag my-app ldavidflorez/my-app:latest
```
3️⃣ **Sube la imagen a Docker Hub**  
```sh
docker push ldavidflorez/my-app:latest
```
📌 Reemplaza `ldavidflorez` por tu usuario de Docker Hub si es diferente.

---

## ☸️ 4. Iniciar el clúster Kubernetes  
Ejecuta **Minikube** y despliega los manifiestos de Kubernetes:  
```sh
minikube start
kubectl apply -f kubernetes/
kubectl get all
```

---

## 🌐 5. Obtener URL del Service en Minikube  
Si estás usando **Minikube**, este comando te dará la URL pública del servicio:  
```sh
minikube service my-app-service
```

---

## 📜 6. Ver logs de un Pod específico  
Si necesitas inspeccionar los logs de un pod en ejecución, usa:  
```sh
kubectl logs <nombre-del-pod>
```
Ejemplo:  
```sh
kubectl logs my-app-5986cd956-chcnk
kubectl logs my-app-5986cd956-jm4lf
kubectl logs my-app-5986cd956-s9c5d
```

---

## ❌ 7. Eliminar un Pod  
Si necesitas reiniciar o eliminar un Pod, usa:  
```sh
kubectl delete pod <nombre-del-pod>
```
Ejemplo:  
```sh
kubectl delete pod my-app-5986cd956-s9c5d
```
📌 Kubernetes creará automáticamente un nuevo Pod si forma parte de un Deployment.

---

## 📌 Notas adicionales  
- Para ver todos los **Pods** en ejecución:  
  ```sh
  kubectl get pods
  ```
- Para ver el estado de los recursos en Kubernetes:  
  ```sh
  kubectl get all
  ```
- Para acceder al contenedor dentro de un Pod:  
  ```sh
  kubectl exec -it <nombre-del-pod> -- /bin/sh
  ```

---

📌 **¡Listo! Ahora tienes un servicio escalable en Kubernetes usando Docker.** 🚀