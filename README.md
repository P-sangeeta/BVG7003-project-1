# BVG7003-project-1
this repository contains scripts for variant calling and explaination of steps  for complete beginners
# sabre.sh
the first step is demultiplexing using the sabre tool
# cutad_for
the second step is trimming of data to remove the barcode and adaptor using cutadapt tool
# mapping
the trimming is followed by Allingnement which is done by using BWA tools

the allingement steps is divided into two parts first we do the mapping resulting in SAM files
# sam2bam
the second step of allingement is to convert the SAM files to BAM files
# samt_var
the final step is variant calling where we can identify the SNPs or indel from NGS data
