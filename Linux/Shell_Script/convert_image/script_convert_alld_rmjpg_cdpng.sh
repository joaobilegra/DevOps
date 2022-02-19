#!/bin/bash
CAMINHO_IMAGEM=/mnt/c/Users/madruguinha/Downloads/imagens-livros
cd $CAMINHO_IMAGEM
if [ ! -d png ]
 then 
   mkdir png
 fi
 
for imagem in *.jpg
  do
   imagem_sem_extensao=$(ls $imagem | awk -F. '{print $1}')
     convert  $imagem_sem_extensao.jpg  png/$imagem_sem_extensao.png
  done
