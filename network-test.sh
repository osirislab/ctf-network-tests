#/bin/bash

for box in rev.chal.csaw.io web.chal.csaw.io pwn.chal.csaw.io crypto.chal.csaw.io misc.chal.csaw.io; do
    echo "Ok, testing $box now!";
    result="$(echo 'PING' | nc $box 9000)";
    if [ -z "$result" ]; then
        echo "$box is not working :(";
    else
        echo "$box: $result";
    fi
done


