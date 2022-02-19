#!/bin/bash
CAMINHO_IMAGEM=/mnt/c/Users/madruguinha/Downloads/imagens-livros
cd $CAMINHO_IMAGEM
for imagem in *.jpg
do
convert  $CAMINHO_IMAGEM/$imagem  $CAMINHO_IMAGEM/$imagem.png
done
