# dxf2papercraft

**dxf2papercraft** é uma ferramenta para converter arquivos DXF (Drawing Exchange Format) em folhas de recorte para papercraft, facilitando a criação de modelos tridimensionais de papel a partir de desenhos vetoriais 2D.

## Visão Geral

O projeto lê arquivos DXF contendo desenhos 2D e gera arquivos DXF modificados, prontos para impressão e montagem de modelos em papel. Ele utiliza a biblioteca [dime](dime/) para manipulação do formato DXF.

## Estrutura do Projeto

- `dxf2papercraft.cxx`: Arquivo principal do aplicativo.
- `paperface.cxx` / `paperface.h`: Manipulação de faces de papel para o modelo.
- `turtle.cxx` / `turtle.h`: Implementação de uma "tartaruga gráfica" para desenhar linhas e formas no espaço 2D.
- `utilities.cxx` / `utilities.h`: Funções utilitárias para manipulação de pontos, linhas e escrita de entidades DXF.
- `vektorr2.h`, `vektorr3.h`, `vektorr3.cxx`: Estruturas para vetores 2D e 3D.
- `dime/`: Biblioteca para leitura e escrita de arquivos DXF.
- `examples/`: Exemplos de arquivos DXF para teste.

## Como Compilar

### Pré-requisitos

- Compilador C++ (g++, clang ou MSVC)
- Make
- (Opcional) Biblioteca dime instalada no sistema (ou utilize a versão incluída no projeto)

### Compilação no Linux

1. Instale dependências (se necessário):

   ```sh
   sudo apt-get update
   sudo apt-get install build-essential make g++ libdime-dev
   ```

   Se preferir usar a versão local da biblioteca dime, pule a instalação do `libdime-dev`.

2. Compile o projeto:

   ```sh
   make
   ```

### Compilação no Windows

1. Instale o [MinGW](http://www.mingw.org/) ou utilize o terminal do MSYS2, ou use o Visual Studio com suporte a C++.

2. Se estiver usando o MinGW/MSYS2, abra o terminal e execute:

   ```sh
   mingw32-make
   ```

   Ou, se estiver usando o Visual Studio, abra o prompt de comando do desenvolvedor e use:

   ```sh
   nmake /f Makefile
   ```

   Certifique-se de que as DLLs necessárias (`cyggcc_s-1.dll`, `cygstdc++-6.dll`, `cygwin1.dll`) estejam no mesmo diretório do executável ou no PATH.

### Compilando a biblioteca dime manualmente (opcional)

Se desejar compilar a biblioteca dime manualmente:

```sh
tar xzf dime_0.20091127.tar.gz
cd dime
./configure --enable-static
make
sudo make install
```

No Windows, utilize os projetos/Makefiles disponíveis na pasta `dime/`.

## Como Usar

Execute o programa passando um arquivo DXF de entrada e um de saída:

```sh
./dxf2papercraft ./examples/mycubes.dxf ./testsheet.dxf
```

Abra o arquivo de saída (`testsheet.dxf`) em um visualizador/editor DXF, como LibreCAD, QCAD ou OpenOffice Draw.

## Exemplos

Arquivos de exemplo podem ser encontrados na pasta `examples/`.

## Licença

Este projeto está licenciado sob a [GNU General Public License v3.0](COPYING).

---

Este projeto é útil para entusiastas de papercraft, educadores e qualquer pessoa interessada em transformar desenhos vetoriais em modelos físicos de papel.