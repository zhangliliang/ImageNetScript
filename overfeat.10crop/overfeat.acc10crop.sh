#!/bin/bash


overfeat=/home/zhangll/Downloads/overfeat/bin/linux_64/cuda/overfeat_cuda
imgpath=/media/b88ef8b8-2ed3-4bc3-89f2-146681633f04/ImageNetData/ILSVRC2012_img_val
resultpath=/media/b88ef8b8-2ed3-4bc3-89f2-146681633f04/ImageNetData/overfeat.ver2/result

cd $imgpath

ls $imgpath|xargs -n200 -t $overfeat -l -g center | cat > $resultpath/center.result
ls $imgpath|xargs -n200 -t $overfeat -l -g northwest | cat > $resultpath/northwest.result
ls $imgpath|xargs -n200 -t $overfeat -l -g northeast | cat > $resultpath/northeast.result
ls $imgpath|xargs -n200 -t $overfeat -l -g southwest | cat > $resultpath/southwest.result
ls $imgpath|xargs -n200 -t $overfeat -l -g southeast | cat > $resultpath/southeast.result

ls $imgpath|xargs -n200 -t $overfeat -l -g center --flop| cat > $resultpath/center.flop.result
ls $imgpath|xargs -n200 -t $overfeat -l -g northwest --flop| cat > $resultpath/northwest.flop.result
ls $imgpath|xargs -n200 -t $overfeat -l -g northeast --flop| cat > $resultpath/northeast.flop.result
ls $imgpath|xargs -n200 -t $overfeat -l -g southwest --flop| cat > $resultpath/southwest.flop.result
ls $imgpath|xargs -n200 -t $overfeat -l -g southeast --flop| cat > $resultpath/southeast.flop.result




