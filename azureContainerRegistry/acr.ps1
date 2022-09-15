##
Substitua o <login-server> pelo nome do servidor de logon de sua instância do registro

#logon no registro
Connect-AzContainerRegistry -Name mycontainerregistry

#Efetuar push de imagem para registro
docker pull mcr.microsoft.com/hello-world

#Marque a imagem
docker tag mcr.microsoft.com/hello-world mycontainerregistry.azurecr.io/hello-world:v1

#Efetuar push da imagem
docker push <login-server>/hello-world:v1

#Remova a imagem
docker rmi <login-server>/hello-world:v1

#Limpeza 
Excluir Grupo de Recursos


