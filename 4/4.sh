maxlineas=`cat numeros.txt | wc -l`
linea=1
pares=0
impares=0
while [ $linea -le $maxlineas ];do
    numero=`cat numeros.txt | head -${linea} | tail -1`
    comprobador=$(expr $numero % 2)
    if [ $comprobador -eq 0 ];then
	echo "$numero"
	pares=$(($pares+1))
    fi
    linea=$(($linea+1))
done
linea=1
while [ $linea -le $maxlineas ];do
    numero=`cat numeros.txt | head -${linea} | tail -1`
    comprobador=$(expr $numero % 2)
    if [ $comprobador -ne 0 ];then
	echo "$numero"
	impares=$(($impares+1))
    fi
    linea=$(($linea+1))
done
echo "Hay ${pares} números pares y ${impares} números ímpares}"
	    
