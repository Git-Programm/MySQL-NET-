BEGIN{
printf "enter the mechanical books:"
getline mc <"/dev/tty"
printf "enter the electrical books:"	
getline ec <"/dev/tty"
printf "enter the computer books:"
getline cs <"/dev/tty"
printf "enter the civil books:"
getline ci <"/dev/tty"
}
{
if(NR==1)
tot1=$2-mc
if(NR==2)
tot2=$2-ec
if(NR==3)
tot3=$2-cs
if(NR==4)
tot4=$2-ci
}
{
if(NR==4)
{
printf "total mechanical books present:%d\n",tot1
printf "total electrical books present:%d\n",tot2
printf "total computer books present:%d\n",tot3
printf "total civil books present:%d\n",tot4
}
}
