echo "Enter basic salary:"
read basic
da=$(echo "$basic*.4" | bc)
hra=$(echo "$basic*.2" | bc)
g=$(echo "$basic+$da+$hra" | bc)
echo "Gross Salary= $g"
