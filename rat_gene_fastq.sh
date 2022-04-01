

# to do fasterq-dump
fasterq-dump /bigdata/faustmanlab/bch/gse108348/SRR6396793

# to run faster q dump on subfolder and save on bigdata drive
cat /home/NETID/bhansen3/vscode/testis_dev-geneexp/gse108348_list.txt | xargs fasterq-dump --outdir /bigdata/faustmanlab/bch/gse108348/fastq