#download SRR files

/home/NETID/bhansen3/vscode/testis_dev-geneexp/sralist_todo3-29.txt
sralist_todo3-29.txt
    # 3-29 pm prefetch list added to run overnight
     #prefetch  SRR6396799 SRR6396800 SRR6396801 SRR6396802

# download FASTqs from SRA
fasterq-dump --split-files ##addSRR##

## now we use STAR for alignment and HTseq for counts

##reference genome 
 

 wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/3.0.0/sratoolkit.3.0.0-ubuntu64.tar.gz

tar xzvf sratoolkit.3.0.0-ubuntu64.tar.gz

export PATH=$PATH:/home/NETID/bhansen3/sratoolkit.3.0.0-ubuntu64/bin 

# to do fasterq-dump
fasterq-dump /bigdata/faustmanlab/bch/gse108348/SRR6396793

# to run faster q dump on subfolder and save on bigdata drive
cat /home/NETID/bhansen3/vscode/testis_dev-geneexp/gse108348_list.txt | xargs fasterq-dump --outdir /bigdata/faustmanlab/bch/gse108348/fastq