
if [ -z "$1" ]; then
    echo "usage: ./service.sh <site>.csaw.io"
    exit;
fi

while true
do
    echo "Hello from $1.csaw.io! Your connection is OK" | nc -lvvv 9000
done

