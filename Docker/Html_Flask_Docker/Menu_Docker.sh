#!/bin/bash
printf "enter the name container "
read namecontainer
function start(){
    docker build -t $namecontainer .
    docker run -d -p 8080:8080 --name $namecontainer $namecontainer
    echo "building container and run"
}
function pause(){
    echo "stopping container"
    docker pause $namecontainer
    echo "$namecontainer -container stopped"
}
function unpause(){
   echo "unpausing container"
   docker unpause $namecontainer
   echo "container $namecontainer unpaused"
}
function status(){
  echo "show detail"
  docker inspect $namecontainer
}


while true; do
 printf "enter with operation ->
 (1) build image/run
 (2) pause container 
 (3) unpause container
 (4) more details container
 (5) exit menu "
 read op 
  case $op in 
    1)
     start;;
       2)
        pause;;
            3 )
             unpause;;

                4)
                  status;;
                   5)
                     break;;

                      *)
                        echo -e "operation does not exist"
 esac                
done