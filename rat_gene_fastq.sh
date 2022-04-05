#1/bin/bash

export PATH=$PATH:/home/NETID/bhansen3/sratoolkit.3.0.0-ubuntu64/bin 

# to run faster q dump on subfolder and save on bigdata drive
cat /home/NETID/bhansen3/vscode/testis_dev-geneexp/gse53960_list.txt | xargs fasterq-dump --outdir /bigdata/faustmanlab/bch/gse53960/fastq


# zip files
gzip -r /bigdata/faustmanlab/bch/gse53960/fastq
