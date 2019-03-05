maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
contador=1
cantidadLluvia=0
while [ $linea -le $maxlineas ];do
    lluvia=`cat precipitaciones.txt | head -${linea} | tail -1 | awk '{print $2}'`
    cantidadLluvia=$(($cantidadLluvia+$lluvia))
    linea=$(($linea+1))
done
linea=$(($linea-1))
mediaLluvia=$(echo "scale=2; $cantidadLluvia / $linea" | bc -l)
echo "La media de precipitaciones es $mediaLluvia"
