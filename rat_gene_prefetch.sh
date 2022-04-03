#1/bin/bash

# add sra toolkit to path
export PATH=$PATH:/home/NETID/bhansen3/sratoolkit.3.0.0-ubuntu64/bin 


#go to proper directory
cd /bigdata/faustmanlab/bch/gse53960

#Prefetch list

prefetch --option-file /home/NETID/bhansen3/vscode/testis_dev-geneexp/gse53960_list.txt