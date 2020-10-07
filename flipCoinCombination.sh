#!/bin/bash -x

echo "Flip Coin Combination Problem"

FlipCoin=$(( $RANDOM%2 ))
if [ $FlipCoin -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
