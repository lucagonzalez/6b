maxlineas=`find $1 -name "*.txt" | wc -l`
linea=1
borrados=0
while [ $linea -le $maxlineas ];do
    dir=`find $1 -name "*.txt" | head -${linea} | tail -1`
    rm $dir
    borrados=$(($borrados+1))
    linea=$(($linea+1))
done
echo "Se han borrado ${borrados} ficheros"
