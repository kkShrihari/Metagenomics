Quality Assessment: Used FastQC to assess raw fastq files in the 'fastqc2' directory.

MultiQC Analysis: Employed MultiQC to generate a consolidated report on FastQC results in the 'multiqc2' directory.

Trimming: Applied quality-based trimming (threshold 20) using Trim Galore on paired-end fastq files, storing results in 'trim_result.'

Post-Trimming Quality Assessment: Conducted FastQC on trimmed files in 'trim_result,' saving results in 'trim_fastqc.'

Taxonomic Classification: Utilized Kraken2 with the UNITE database for taxonomic classification on trimmed files in 'trim_result.' Output and report saved in 'kraken2' directory.
