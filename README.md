
# Pesquisa

https://hub.docker.com/_/scratch/
https://hub.docker.com/_/golang/

Para deixar a imagem bem pequena:
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o fc-rocks ./cmd

# Build & run
Para compilar será necessário instalar o make
sudo apt install make 

# build: make build

# run: make run
docker run --name fullcycle caiojorge/fullcycle 
Full Cycle Rocks!!

# Publish docker hub
docker login
docker push caiojorge/fullcycle
https://hub.docker.com/repository/docker/caiojorge/fullcycle/general

# Size com scracth
docker images caiojorge/fullcycle
REPOSITORY            TAG       IMAGE ID       CREATED          SIZE
caiojorge/fullcycle   latest    a964e35cb584   36 seconds ago   1.8MB

# Size em scracth
docker images caiojorge/fullcycle
REPOSITORY            TAG       IMAGE ID       CREATED          SIZE
caiojorge/fullcycle   latest    2c035b3079a7   12 seconds ago   249MB

# Desafio
Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

docker run <seu-user>/fullcycle

Temos que ter o seguinte resultado: Full Cycle Rocks!!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

3) A imagem de nosso projeto Go precisa ter menos de 2MB =)

Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.

Suba o projeto em um repositório Git remoto e coloque o link da imagem que subiu no Docker Hub.

Compartilhe o link do repositório do Git remoto para corrigirmos seu projeto.

Divirta-se!