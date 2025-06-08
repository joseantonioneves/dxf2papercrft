# dxf2papercraft

**dxf2papercraft** é uma ferramenta para converter arquivos DXF (Drawing Exchange Format) em folhas de recorte para papercraft, facilitando a criação de modelos tridimensionais de papel a partir de desenhos vetoriais 2D.

## Visão Geral

O projeto lê arquivos DXF contendo desenhos 2D e gera arquivos DXF modificados, prontos para impressão e montagem de modelos em papel. Ele utiliza a biblioteca [dime](dime/) para manipulação do formato DXF.

## Estrutura do Projeto

- [`dxf2papercraft.cxx`](dxf2papercraft.cxx): Arquivo principal do aplicativo.
- [`paperface.cxx`](paperface.cxx) / [`paperface.h`](paperface.h): Manipulação de faces de papel para o modelo.
- [`turtle.cxx`](turtle.cxx) / [`turtle.h`](turtle.h): Implementação de uma "tartaruga gráfica" para desenhar linhas e formas no espaço 2D.
- [`utilities.cxx`](utilities.cxx) / [`utilities.h`](utilities.h): Funções utilitárias para manipulação de pontos, linhas e escrita de entidades DXF.
- [`vektorr2.h`](vektorr2.h), [`vektorr3.h`](vektorr3.h), [`vektorr3.cxx`](vektorr3.cxx): Estruturas para vetores 2D e 3D.
- [`dime/`](dime/): Biblioteca para leitura e escrita de arquivos DXF.
- [`examples/`](examples/): Exemplos de arquivos DXF para teste.

## Como Compilar

1. Instale a biblioteca dime (ou utilize a versão incluída no projeto):
   ```sh
   sudo apt-get install libdime libdime-dev