#¡ /bin/bash
ls ./*.txt
echo "enter file name: "
read n
sum=0;

a=(`egrep '\d+' $n`)
if [[ ${#a[*]} ]]
	then 
			echo "Your file is: $n"
			 for i in ${a[*]}
             do
               (( sum =sum + $i )) 
             done
          echo "The result is: $sum"
else
      echo "Invalid file" 
  fi

