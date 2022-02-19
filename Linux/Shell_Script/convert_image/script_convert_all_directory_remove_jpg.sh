#!/bin/bash
CAMINHO_IMAGEM=/mnt/c/Users/madruguinha/Downloads/imagens-livros
cd $CAMINHO_IMAGEM
for imagem in *.jpg
do
imagem_sem_extensao=$(ls $imagem | awk -F. '{print $1}')
convert  $CAMINHO_IMAGEM/$imagem_sem_extensao.jpg  $CAMINHO_IMAGEM/$imagem_sem_extensao.png
done
