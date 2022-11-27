#!/bin/bash
DATA=/home/sangeeta/homework/NGS
REF=/home/sangeeta/homework/refgenome/Gmax_275_v2.0.fa
CPU=2
THR=2

exec &> bwa.log
cd $DATA
		parallel -j $CPU bwa mem -t $THR $REF {}.fastq ">" {}.sam ::: $(ls -1 *.fastq | sed 's/.fastq//')
		if [ $? -ne 0 ]
			then 
				printf There is a problem in the alignment step
				exit 1
		fi
