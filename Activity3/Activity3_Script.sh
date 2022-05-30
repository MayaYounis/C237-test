#!/bin/bash


# generating random numbers
output=$(

for i in {1..5}
do 
       shuf -i 1-50 -n1
       if [ $i -eq 5 ]
       then
       shuf -i 1-10 -n1
       fi
done 

)


#redirecting the output to a separate file


echo $output >> Activity3_Output.$(date +'%Y%m%d')

# Asking for user input

x=1
while [ $x -le 6 ]  
do        
       
	if [ "$x" -le "5" ]
	then
		echo Entre 5 numbers between  1 and 50
		read input

		if [ "$input" -gt "0" ] && [ "$input" -le "50" ]
		then 
			Input_Array+=($input)
			((x++))
		

	        else
			((x--))
			echo "Enter a valid #"
	
		 
		fi	



	else [ "$x" -eq "6" ]

		((x++))
		echo " entre a number between 1-10 "
		read input
	
		if [ "$input" -gt 0 ] && [ "$input" -le 10 ]
		then
			Input_Array+=($input)
			
		else
			((x--))
			echo entre a vaild number
	
		fi
	
	fi
echo ${Input_Array[@]}
done 	







# Comparing input and output

echo $output

if [ "${Input_Array[@]}" == "$output" ]
then 
	echo You won!

else 
	echo Learn your lesson and never gamble again, You LOST!

fi

