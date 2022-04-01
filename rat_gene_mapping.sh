#!/bin/bash

## script to map fastq reads to rat genome using STAR

# run FASTqc first (use conda env fastqc_env)

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# define  the gene index

index=/bigdata/faustmanlab/bch/rat_assembly/ncbi-star_index

# provide direction to fastq files
FILES=/bigdata/faustmanlab/bch/gse108348/*.fastq.gz

for f in $FILES
do
    echo $f
    base=$(basename $f .fastq.gz)
    echo $base
    STAR --runThreadN 2 --genomeDir $index --readFilesIn $f --outSAMtype BAM SortedByCoordinate \
         --quantMode GeneCounts --readFilesCommand zcat --outFileNamePrefix $base"_"
done

echo "hopefully that worked!"