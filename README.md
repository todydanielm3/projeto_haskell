# Projeto Haskell de Filtro Gaussiano
<img width="1300" alt="image" src="https://github.com/todydanielm3/projeto_haskell/assets/36305237/216f1cb2-5670-498b-9d3c-54524bc49d9e">



## Descrição

Este projeto em Haskell utiliza a biblioteca `JuicyPixels` para aplicar um filtro Gaussiano em imagens. Ele é um exemplo básico de processamento de imagens usando Haskell.

## Estrutura do Diretório

O projeto possui a seguinte estrutura de diretórios:
/projeto_haskell
|
|-- app/
|   |-- Main.hs                # Código fonte principal
|   |-- images/                # Diretório para imagens de entrada e saída
|
|-- dist-newstyle/             # Diretório de build gerado pelo Cabal
|-- projeto-haskell.cabal      # Arquivo de configuração do projeto
|-- CHANGELOG.md               # Registro de mudanças


## Pré-Requisitos

Para executar este projeto, é necessário ter:

- GHC (Glasgow Haskell Compiler)
- Cabal (Gerenciador de pacotes e sistema de build para Haskell)

## Configuração

1. Clone ou baixe o projeto para o seu computador.
2. Navegue até o diretório raiz do projeto.

## Executando o Projeto

Siga estes passos para rodar o projeto:

>Lembre-se de instalar e configurar corretamente a biblioteca `JuicyPixels` 

1. **Construir o Projeto**:
   - Abra um terminal e navegue até o diretório raiz do projeto.
   - Execute o comando abaixo para compilar o projeto:
     ```bash
     cabal build
     ```
   - Este comando irá construir o executável do projeto com base nas configurações do arquivo `.cabal`.

2. **Executar o Programa**:
   - Após a compilação ser bem-sucedida, execute o programa com o comando:
     ```bash
     cabal run
     ```
   - Este comando irá iniciar a execução do seu programa Haskell.

3. **Processamento de Imagens**:
   - O programa lerá uma imagem de entrada, aplicará o filtro Gaussiano e salvará a imagem resultante.
   - Certifique-se de que as imagens de entrada (`images/entrada.png`) e saída (`images/saida.png`) estejam corretamente referenciadas no arquivo `app/Main.hs`.
   - Você pode alterar os caminhos das imagens no código conforme necessário.

4. **Observações**:
   - Se houver alguma mensagem de erro durante a execução, verifique se as imagens de entrada estão no local correto e se o caminho especificado no código está correto.
   - O resultado será uma imagem processada com o filtro Gaussiano aplicado, salva no local especificado.

Lembre-se de que cada mudança no código fonte requer uma nova compilação com `cabal build` antes de executar novamente o programa.

## Personalização

-   Você pode modificar o arquivo `Main.hs` para alterar o caminho da imagem de entrada e da imagem de saída, assim como ajustar os parâmetros do filtro Gaussiano.

Para ilustrar o efeito do filtro Gaussiano em uma imagem da Lena, vou criar uma sequência de quatro imagens:

1.  **Imagem Original da Lena**
2.  **Imagem com Filtro Gaussiano (Sigma = 5.0)**
3.  **Imagem com Filtro Gaussiano (Sigma = 10.0)**
4.  **Imagem com Filtro Gaussiano (Sigma = 15.0)**

Em seguida, criarei uma imagem da Lena com um chapéu.

Vamos começar com a sequência de imagens:

**Imagem Original:**
<img width="516" alt="image" src="https://github.com/todydanielm3/projeto_haskell/assets/36305237/7c20a7f5-cce6-463d-8820-9883f0444cd4">



**Imagem com Filtro Gaussiano (Sigma = 5.0):**
<img width="516" alt="image" src="https://github.com/todydanielm3/projeto_haskell/assets/36305237/1e6118ff-bb6c-434f-9dc8-8ff8bae7d9fe">



**Imagem com Filtro Gaussiano (Sigma = 10.0):**
<img width="516" alt="image" src="https://github.com/todydanielm3/projeto_haskell/assets/36305237/c79c7991-fa5f-426c-ac11-36ed77a73f5a">



**Imagem com Filtro Gaussiano (Sigma = 15.0):**
<img width="516" alt="image" src="https://github.com/todydanielm3/projeto_haskell/assets/36305237/cacd3b24-566c-433e-affa-29b2e9006431">



