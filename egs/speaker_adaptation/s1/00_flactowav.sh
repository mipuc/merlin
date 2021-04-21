#!/bin/bash

mv VCTK-Corpus/wav48_silence_trimmed/ VCTK-Corpus/wav48

cd VCTK-Corpus/wav48

for dir in p225 p226 p227 p228 p229 p230 p231 p232 p233;
do 
cd $dir; 
echo $dir;

 for f in *.flac;
 do 
 g=`basename $f .flac`;
 sox $f $g.wav; 
 done; 

cd ..; 
done

cd ..
