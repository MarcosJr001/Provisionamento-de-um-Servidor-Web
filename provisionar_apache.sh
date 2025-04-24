#!/bin/bash

# Atualizar o sistema
echo "Atualizando o sistema..."
sudo apt update -y
sudo apt upgrade -y

# Instalar Apache
echo "Instalando o servidor Apache..."
sudo apt install apache2 -y

# Iniciar o Apache
echo "Iniciando o Apache..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Verificar o status do Apache
echo "Verificando o status do Apache..."
sudo systemctl status apache2

# Configuração de firewall para permitir tráfego HTTP
echo "Configurando o firewall..."
sudo ufw allow 'Apache Full'

# Criar uma página de teste
echo "Criando uma página de teste..."
echo "<html><body><h1>Servidor Apache em execução com sucesso!</h1></body></html>" | sudo tee /var/www/html/index.html

# Reiniciar o Apache
echo "Reiniciando o Apache..."
sudo systemctl restart apache2

echo "Provisionamento concluído! Acesse o servidor para ver a página de teste."
