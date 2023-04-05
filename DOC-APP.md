# Documentação da Aplicação

Siga todos os passos para realizar de forma correta o gerenciamento do CNAB

# Pré-requisitos para executar a aplicação

1 - Ter instalando o **Docker com o docker compose**, para instalar inicie o passo 2, se tiver instalado pule esta etapa.


2 - Intalando o **Docker com o Docker compose**.


a - Baixe o instalador do Docker Desktop para Windows no [site oficial do Docker(https://www.docker.com/products/docker-desktop)<br>
b - Após o download, execute o instalador e siga as instruções na tela para concluir a instalação.<br>
c - Depois de instalar o Docker Desktop, abra o PowerShell como administrador e execute o seguinte comando para verificar se a instalação foi bem-sucedida:<br>
	**'docker version'** - Isso deve exibir a versão do Docker que foi instalada.<br>
d - Agora, você pode instalar o Docker Compose usando o seguinte comando no PowerShell<br>
	**'Install-Module -Name DockerCompose -Scope CurrentUser -Force'** - Pressione Enter e aguarde a instalação ser concluída.<br>
e - Depois de instalar o Docker Compose, você pode verificar a versão do Compose usando o seguinte comando<br>
	**'docker-compose version'** - Isso deve exibir a versão do Docker Compose que foi instalada.<br>
f - Execute o docker usando o icone criado na área de trabalho.<br>


# Após a instalar e executar o Docker, realizar os seguintes passos:

1 - Crie uma pasta workspace e abra o gitbash


2 - Execute o comando **'git config --global core.autocrlf false'**


3 - Execute o comando **'git clone https://github.com/andersontome/desafio-dev.git'**


4 - Execute o comando **'cd desafio-dev'**


5 - Execute o comando **'docker build -t proc-cnab-api --no-cache .'**


6 - Execute o comando **'docker-compose up'**



Após realizar todos os comandos, volte ao Docker e certifique que todas as imagens estejam com o status **'Rinning'**.

# Acessando e gerenciando aplicação via Web.
	
1 - Abra o browser de sua preferencia e execute **'localhost'**.


2 - Na tela de Login preencha **'admin'** em **ambos** campos de usuário e senha.


3 - Em Gerenciamento CNAB, clique na Aba **'Upload CNAB'**


4 - Clique na Opção para **'Selecionar Arquivo'** e selecione o [arquivo'CNAB.txt'](https://github.com/andersontome/desafio-dev/blob/main/CNAB.txt)


5 - Após selecionar o arquivo clique em **'Enviar Arquivo'**. Essa ação deve aparecer um pou-up dizendo **arquivo enviado com sucesso**.


6 - Para Visualizar os dados enviados selecione a outra aba **'Visualizar Dados'** nela encontra-se os dados de cada loja, cada linha da tabela é expansivel, para visualizar os dados deuma loja clique na linha da loja desejada.



# Acessando a aplicação vida SwaggerUI
	
1 - Abra o browser de sua preferencia e execute **'http://localhost:8080/swagger-ui.html'**


2 - Para realizar o Gerenciamento clique no **Icone**(Autorize cadeado) do lado direito.


3 - Para realizar a autenticação, preencha com os seguinte dados:


a - username = admin<br>
b - password = admin<br>
c - client_id = proc-cnab-web<br>
d - client_secret = web123<br>

Após login, clique em close.



4 - Para enviar os dados abra CNABS e clique em **'Try it out'** do lado direito


5 - Clique em **'Escolher arquivo'** e selecione o [arquivo'CNAB.txt'](https://github.com/andersontome/desafio-dev/blob/main/CNAB.txt)


6 - Após selecionar o arquivo clique em **'Execute'** a resposta deve ter o código **204** que o processo foi realizado.


7 - Para realizar a consulta abra **LOJAS** e clique em **'Try it out'** do lado direito


8 - Clique em **Execute**, abaixo a resposta deve ter o cógigo **200** com os dados em formato **Json**.
	