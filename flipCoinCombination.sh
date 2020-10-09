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

declare  -A  coin;
coin[HH]=0;
coin[TT]=0;
coin[HT]=0;
coin[TH]=0;
count=0;

DoubleDictionary (){
        if [ $1 -eq 0 ]
        then
                echo "HH"
                ((coin[HH]++))
        elif [ $1 -eq 1 ]
	then
		echo "TT"
		((coin[TT]++))
	elif [ $1 -eq 2 ]
	then
		echo "HT"
		((coin[HT]++))
	else
                echo "TH"
                ((coin[TH]++))
        fi
}

while [ $count -lt 20 ]
do
        FlipCoin=$(( $RANDOM%4 ));
        DoubleDictionary $FlipCoin;
        ((count++))
done

echo "number of times HH combination:" ${coin[HH]}
echo "number of times TT combination:" ${coin[TT]}
echo "number of times HT combination:" ${coin[HT]}
echo "number of times TH combination:" ${coin[TH]}

percentageof_HH=$(( (${coin[HH]}*100)/20 ))
percentageof_TT=$(( (${coin[TT]}*100)/20 ))
percentageof_HT=$(( (${coin[HT]}*100)/20 ))
percentageof_TH=$(( (${coin[TH]}*100)/20 ))

echo "percentage of HH:" $percentageof_HH
echo "percentage of TT:" $percentageof_TT
echo "percentage of HT:" $percentageof_HT
echo "percentage of TH:" $percentageof_TH
