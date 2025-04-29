echo "Enter marks in 5 subjects:"
read m1 m2 m3 m4 m5
total=$(($m1+$m2+$m3+$m4+$m5))
p=$(echo "scale=2; $total / 5" |bc)
echo "Total Marks:$total"
echo "Percentage:$p"
