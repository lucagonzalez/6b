maxlineas=`cat listado.txt | wc -l`
linea=1
linux=0
windows=0
linuxproc=0
windowsproc=0
while [ $linea -le $maxlineas ];do
    usuario=`cat listado.txt | head -${linea} | tail -1 | awk '{print $1}'`
    so=`cat listado.txt | head -${linea} | tail -1 | awk '{print $2}'`
    procesos=`cat listado.txt | head -${linea} | tail -1 | awk '{print $3}'`
    if [ $so = "Linux" ];then
	linux=$(($linux+1))
	linuxproc=$(($linuxproc+$procesos))
    else
	windows=$(($windows+1))
	windowsproc=$(($windowsproc+$procesos)) 
    fi
    linea=$(($linea+1))
done
echo "Linux -> ${linux} ${linuxproc}"
echo "Windows -> ${windows} ${windowsproc}"
	    
