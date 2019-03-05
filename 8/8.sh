i=2
declare -a conexiones
while [ $i -le 254 ];do
    echo "Verificando 192.168.0.$i"
    ping=`ping -c 1 192.168.0.$i | head -5 | tail -1 | awk '{print $4}'`
    if [ $ping != 0 ];then
	direccion="192.168.0.$i"
	conexiones+=($direccion)
    fi
    i=$(($i+1))
done
echo "Los siguientes ips están conectados a la red: ${conexiones[@]}"
