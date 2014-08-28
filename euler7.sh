# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

i=3
j=3
factor=0
con=2
match=0


# since 2 is prime numbers, we will start from 3 so we can add more 2 in each cycle and skip even numbers
# this means, that we are looking for the 10000th number (not 10001st) as we already skipped two (2 and 3)

while [ $con -le 1000 ]; do
    j=3 
    match=0


     if [ $(( $i%3 )) -ne 0 ];
         then
            factor=$(( $i%3 ))
            factor=$i-$factor
            factor=$(( $factor/3 ))

            while [ $j -lt $factor ]; do
                if [ $(( $i%$j )) -eq 0 ]; 
                    then 
                        match=1
                        j=$i # kill switch so cycle doesnt check rest of the numbers as well
                fi

                let j=j+1
            done

         else
            match=1
    fi

    if [[ $match -eq 0 ]];
        then
            let con=con+1 
            echo $i is $con th prime
    #else 
         #echo $i is not a prime
    fi
 
    let i=i+2

done

