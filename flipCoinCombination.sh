#!/bin/bash -x

echo "Flip Coin Combination Problem"

FlipCoin=$(( $RANDOM%2 ))
if [ $FlipCoin -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi

declare  -A  coin;

coin[heads]=0;
coin[tails]=0;
count=0;

SingleDictionary (){
	if [ $1 -eq 0 ]
	then
		echo "Heads"
		((coin[heads]++))
	else
		
		echo "Tails"
		((coin[tails]++))
	fi
}

while [ $count -lt 20 ]
do
	FlipCoin=$(( $RANDOM%2 ));
	SingleDictionary $FlipCoin;
	((count++))
done

echo "number of times heads:" ${coin[heads]}
echo "number of times tails:" ${coin[tails]}

percentageofHeads=$(( (${coin[heads]}*100)/20 ))
percentageofTails=$(( (${coin[tails]}*100)/20 ))

echo "percentage of heads:" $percentageofHeads
echo "percentage of tails:" $percentageofTails
