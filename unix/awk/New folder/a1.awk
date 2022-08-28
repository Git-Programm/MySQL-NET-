BEGIN{ printf "\n Employee List\n\n" 
}split($4,ar,"-");
if (ar[3]==12)
	{
	printf "\n %d %s ",$1,$2
	}
END { printf "\n Finished\n"}
