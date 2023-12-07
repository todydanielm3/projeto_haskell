# Projeto de Processamento de Imagens em Haskell

Este projeto é uma implementação simples de um filtro Gaussiano para processamento de imagens, utilizando Haskell e a biblioteca `JuicyPixels`.

## Estrutura do Diretório

O projeto tem a seguinte estrutura de diretórios:

/projeto_haskell
|-- app
| |-- Main.hs # Código fonte principal
| |-- images # Diretório para armazenar imagens de entrada/saída
|-- dist-newstyle # Diretório gerado pelo Cabal para build
|-- projeto-haskell.cabal # Arquivo de configuração do Cabal
|-- CHANGELOG.md # Arquivo de log de mudanças

markdown
Copy code

## Pré-Requisitos

Para executar este projeto, você precisará ter o seguinte instalado:

- GHC (Glasgow Haskell Compiler)
- Cabal (Gerenciador de pacotes e sistema de build para Haskell)

## Configuração

1. Clone o repositório ou baixe os arquivos do projeto para o seu computador.

2. Navegue até o diretório raiz do projeto.

## Como Rodar o Projeto

Para rodar o projeto, siga estas etapas:

1. No diretório raiz do projeto, execute o comando para construir o projeto:
   ```bash
   cabal build
Para executar o programa:
bash
Copy code
cabal run
O programa lerá uma imagem de entrada, aplicará o filtro Gaussiano e salvará a imagem resultante. Assegure-se de que as imagens de entrada e saída estão corretamente referenciadas no arquivo Main.hs.
Personalização

Você pode modificar o arquivo Main.hs para alterar o caminho da imagem de entrada e da imagem de saída, assim como ajustar os parâmetros do filtro Gaussiano.
Contribuições

Contribuições para o projeto são bem-vindas. Sinta-se à vontade para criar um fork do repositório, fazer suas alterações e enviar um pull request.

Licença

Este projeto está licenciado sob a Licença MIT.

javascript
Copy code

Este `README.md` fornece uma visão geral básica do projeto, sua estrutura, como configurar e executar o projeto, e informações sobre contribuições e licença. Você pode adaptar ou expandir este arquivo conforme necessário para o seu projeto específico. 

Para adicionar este arquivo ao seu projeto, crie um novo arquivo chamado `README.md` na raiz do seu diretório de projeto e copie o conteúdo acima para dentro dele.
