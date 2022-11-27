#!/bin/bash
DATA=/home/sangeeta/homework/data/FC20150701_1.fq
BARCODE=/home/sangeeta/homework/data/FC20150701_1.txt

mkdir /home/sangeeta/homework/NGS

cd  /home/sangeeta/homework/NGS
exec &> sabre.log

sabre se -f $DATA -b $BARCODE -u unk.fastq
