#!/bin/bash


overfeat=/home/zhangll/Downloads/overfeat/bin/linux_64/cuda/overfeat_cuda
imgpath=/media/b88ef8b8-2ed3-4bc3-89f2-146681633f04/ImageNetData/ILSVRC2012_img_val
resultpath=/media/b88ef8b8-2ed3-4bc3-89f2-146681633f04/ImageNetData/overfeat.ver2/result

cd $imgpath

ls $imgpath|xargs -n200 -t $overfeat -g center | cat > $resultpath/center.result
ls $imgpath|xargs -n200 -t $overfeat -g northwest | cat > $resultpath/northwest.result
ls $imgpath|xargs -n200 -t $overfeat -g northeast | cat > $resultpath/northeast.result
ls $imgpath|xargs -n200 -t $overfeat -g southwest | cat > $resultpath/southwest.result
ls $imgpath|xargs -n200 -t $overfeat -g southeast | cat > $resultpath/southeast.result

ls $imgpath|xargs -n200 -t $overfeat -g center --flop| cat > $resultpath/center.flop.result
ls $imgpath|xargs -n200 -t $overfeat -g northwest --flop| cat > $resultpath/northwest.flop.result
ls $imgpath|xargs -n200 -t $overfeat -g northeast --flop| cat > $resultpath/northeast.flop.result
ls $imgpath|xargs -n200 -t $overfeat -g southwest --flop| cat > $resultpath/southwest.flop.result
ls $imgpath|xargs -n200 -t $overfeat -g southeast --flop| cat > $resultpath/southeast.flop.result




