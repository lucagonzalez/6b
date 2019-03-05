maxlineas=`cat precipitaciones.txt | wc -l`
linea=1
dias=(ERROR LUNES MARTES MIERCOLES JUEVES VIERNES SABADO DOMINGO)
while [ $linea -le $maxlineas ];do
    lluvia=`cat precipitaciones.txt | head -${linea} | tail -1 | awk '{print $2}'`
    dia=`cat precipitaciones.txt | head -${linea} | tail -1 | awk '{print $1}'`
    if [ $lluvia -eq 0 ];then
	if [ $dia -le 7 ];then
	    echo "${dias[$dia]}"
	elif [ $dia -gt 7 -a $dia -le 10 ]; then
	    dia=$(($dia-7))
	    echo "${dias[$dia]}"
	fi
    fi
    linea=$(($linea+1))
done

	    
