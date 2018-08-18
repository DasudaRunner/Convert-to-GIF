filename=$1 
sudo rm -rf ./jpegs/*
mplayer -ao null ${filename} -vo jpeg:outdir=./jpegs
convert ./jpegs/*.jpg -resize 45% ./out_big.gif
sudo rm -rf ./jpegs/*
convert -layers Optimize out_big.gif out.gif
rm -rf ./out_big.gif
