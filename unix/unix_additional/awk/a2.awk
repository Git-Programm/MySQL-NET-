BEGIN{ printf "\n Employee List \n"}
$5>9000{printf "\n %d %s %d %.2f ",$1,$2,$5,$5*0.30}
END { printf "\n Completed\n" }
