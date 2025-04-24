# Provisionamento Automático de Servidor Web Apache

Este projeto contém um script Bash para provisionar automaticamente um servidor web Apache em um sistema Linux.

## Requisitos

- Um servidor Linux (Ubuntu ou similar)
- Acesso de administrador (sudo)
- Git instalado no sistema

## Como Usar

1 Torne o script executável:

    ```bash
    chmod +x provisionar_apache.sh
    ```

2 Execute o script para instalar e configurar o Apache:

    ```bash
    ./provisionar_apache.sh
    ```

3. Após a execução, abra um navegador e acesse o servidor pelo IP ou `localhost`:

    ```
    http://<IP_DO_SERVIDOR>/
    ```

4. Você verá a página de teste com a mensagem "Servidor Apache em execução com sucesso!"

## Explicação do Script

1. **Atualização do Sistema**: O script começa atualizando o sistema para garantir que todos os pacotes estejam atualizados.
2. **Instalação do Apache**: O servidor Apache é instalado.
3. **Início do Apache**: O serviço do Apache é iniciado e configurado para iniciar automaticamente com o sistema.
4. **Configuração do Firewall**: O firewall é configurado para permitir tráfego HTTP.
5. **Página de Teste**: Uma página HTML simples é criada para testar a instalação.

## Conclusão

Este script é uma forma simples e automatizada de provisionar um servidor Apache em um sistema Linux, perfeito para quem deseja configurar rapidamente um servidor web.
