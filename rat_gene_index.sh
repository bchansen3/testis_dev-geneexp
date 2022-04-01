#!/bin/bash

# add STAR to PATH
export PATH=$PATH:/home/NETID/bhansen3/STAR-2.7.10a/source

# set directory
cd /bigdata/faustmanlab/bch/rat_assembly

# STAR command 

STAR --runThreadN 2 \
--runMode genomeGenerate \
--genomeDir /bigdata/faustmanlab/bch/rat_assembly/ncbi-star_index \
--genomeFastaFiles /bigdata/faustmanlab/bch/rat_assembly/Rattus_norvegicus.mRatBN7.2.dna.toplevel.fa \
--sjdbGTFfile /bigdata/faustmanlab/bch/rat_assembly/Rattus_norvegicus.mRatBN7.2.105.gtf \
--sjdbOverhang 99
