#download SRR files

    # need to download SRR6396795 and SRR6396798
     #prefetch  SRR6396799 SRR6396800 SRR6396801 SRR6396802

# download FASTqs from SRA
fasterq-dump --split-files ##addSRR##

## now we use STAR for alignment and HTseq for counts

##reference genome 
 