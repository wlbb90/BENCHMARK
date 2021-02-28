#/bin/bash

numeroap=$1  #Numero de Aps na simulação 
numerosta=$2 #Numero de Stas na simulação
qRun=$3  #Quantidade de vezes a ser rodado
cont=0

while [ $cont -lt $qRun ]
do
  ./waf --run "scratch/simulns3 --aps=$1 --stas=$2" >> resultsim.txt
  cont=$(echo $cont+1| bc)
done
 grep -i "ThroughputVariance:" resultsim.txt >> throughput.txt
 cut -d' ' -f 4 throughput.txt >> ~/simulacaons3/tPut_com_$1_aps_$2_stas.txt
 
 grep -i "DelayAverageMean:" resultsim.txt >> delay.txt
 cut -d' ' -f 4 delay.txt >> ~/simulacaons3/delay_com_$1_aps_$2_stas.txt
 

rm -r arquivosim.txt resultsim.txt throughput.txt delay.txt 

echo "Finalizado"
