#!/bin/bash

# This script processes QIIME2 files for training Naive Bayes classifiers.
# Ensure the QIIME2 environment is activated before running this script.
# Place the script in the directory with the unzipped QIIME2 files from https://eukaryome.org/qiime2/.

# Import taxonomy data for long-read eukaryotic sequences
# Specify the data type for taxonomy, input the TSV taxonomy file, output the QZA taxonomy artifact

qiime tools import --type 'FeatureData[Taxonomy]' --input-path QIIME2_EUK_longread_v1.9.tsv --output-path EUK_LR_tax.qza                              

# Import sequence data for long-read eukaryotic sequences
# Input the SSU sequence file, output the SSU sequence artifact

qiime tools import --input-path QIIME2_EUK_longread_v1.9.fasta --output-path EUK_LR_seq.qza --type 'FeatureData[Sequence]'                            

# Train a Naive Bayes classifier for the long-read eukaryotic sequences

qiime feature-classifier fit-classifier-naive-bayes --i-reference-reads EUK_LR_seq.qza --i-reference-taxonomy EUK_LR_tax.qza --o-classifier EUK_LR_classifier.qza                      

# Import taxonomy data for ITS eukaryotic sequences
# Specify the data type for taxonomy, input the TSV taxonomy file, output the QZA taxonomy artifact

qiime tools import --type 'FeatureData[Taxonomy]' --input-path QIIME2_EUK_ITS_v1.9.tsv --output-path EUK_ITS_tax.qza                             

# Import sequence data for ITS eukaryotic sequences
# Input the SSU sequence file, output the SSU sequence artifact

qiime tools import --input-path QIIME2_EUK_longread_v1.9.fasta --output-path EUK_ITS_seq.qza --type 'FeatureData[Sequence]'

# Train a Naive Bayes classifier for ITS eukaryotic sequences

qiime feature-classifier fit-classifier-naive-bayes --i-reference-reads EUK_ITS_seq.qza --i-reference-taxonomy EUK_ITS_tax.qza --o-classifier EUK_ITS_classifier.qza

# Import taxonomy data for LSU eukaryotic sequences
# Specify the data type for taxonomy, input the TSV taxonomy file, output the QZA taxonomy artifact

qiime tools import --type 'FeatureData[Taxonomy]' --input-path QIIME2_EUK_LSU_v1.9.tsv --output-path EUK_LSU_tax.qza                             

# Import sequence data for LSU eukaryotic sequences
# Input the SSU sequence file, output the SSU sequence artifact

qiime tools import --input-path QIIME2_EUK_LSU_v1.9.fasta --output-path EUK_LSU_seq.qza --type 'FeatureData[Sequence]'

# Train a Naive Bayes classifier for LSU eukaryotic sequences

qiime feature-classifier fit-classifier-naive-bayes --i-reference-reads EUK_LSU_seq.qza --i-reference-taxonomy EUK_LSU_tax.qza --o-classifier EUK_LSU_classifier.qza

# Import taxonomy data for SSU eukaryotic sequences
# Specify the data type for taxonomy, input the TSV taxonomy file, output the QZA taxonomy artifact

qiime tools import --type 'FeatureData[Taxonomy]' --input-path QIIME2_EUK_SSU_v1.9.tsv --output-path EUK_SSU_tax.qza                             

# Import sequence data for SSU eukaryotic sequences
# Input the SSU sequence file, output the SSU sequence artifact

qiime tools import --input-path QIIME2_EUK_SSU_v1.9.fasta --output-path EUK_SSU_seq.qza --type 'FeatureData[Sequence]'

# Train a Naive Bayes classifier for SSU eukaryotic sequences

qiime feature-classifier fit-classifier-naive-bayes --i-reference-reads EUK_SSU_seq.qza --i-reference-taxonomy EUK_SSU_tax.qza --o-classifier EUK_SSU_classifier.qza

# End of script. All classifiers are now trained and ready for downstream analysis.

