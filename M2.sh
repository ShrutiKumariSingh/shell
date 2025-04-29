echo "Enter distance between two cities:"
read km
m=$(echo "$km*1000" |bc)
f=$(echo "$km*3200.84" |bc)
i=$(echo "$km*39370.1" |bc)
cm=$(echo "$km*100000" |bc)
echo "Distance in metres $m"
echo "Distance in feet $f"
echo "Distance in inches $i"
echo "Distance in centimetres $m"
