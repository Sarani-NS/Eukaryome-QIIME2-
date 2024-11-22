# QIIME 2 Naive Bayes Classifier Pipeline

This repository contains scripts for generating and training a Naive Bayes classifier using **QIIME 2** and the **Scikit-learn** library. It is designed for amplicon data and supports preprocessing, importing data, and classifier training.

## Prerequisites

Before running the pipeline, ensure the following are installed:
- **QIIME 2** (version compatible with your dataset)
- **Scikit-learn** (version 1.4.2 or as required)
- A conda environment is recommended for package management.

Activate your environment before proceeding:  

```bash
conda activate qiime2-amplicon-2024.10
```

## Pretrained Classifiers

If you'd like to use a pretrained classifier, check out the following link:  
[Pretrained Classifiers (Scikit-learn 1.4.2)](https://drive.google.com/drive/folders/1p4kWcqbvQ6PDmBXAUVCoMz2ftoiAOu9U)

## Usage

### Step 1: Prepare the Reference Data

Ensure you have the following:
1. A FASTA file of reference sequences (e.g: `EUK_SSU_ref.fasta`)
2. A taxonomy mapping file (e.g: `EUK_SSU_taxonomy.tsv`)

Place these files in the working directory.

### Step 2: Run the Script

Ensure you have all the necessary permissions for the script to be executed:

```bash
chmod +x eukaryome_classifiers.sh
```

Run the script to create the classifier:

```bash
./eukaryome_classifiers.sh
```

The script performs the following steps:
- Imports the reference sequences and taxonomy as QIIME 2 artifacts.
- Trains a Naive Bayes classifier using the imported data.

### Example output for the SSU 

The output of the script includes:
- `EUK_SSU_seq.qza`: QIIME 2 artifact for the reference sequences.
- `EUK_SSU_taxonomy.qza`: QIIME 2 artifact for the reference taxonomy.
- `EUK_SSU_classifier.qza`: Trained classifier ready for taxonomic assignments.

### Script Parameters

Modify the script to adjust file paths or parameters:
- Input paths for the FASTA and taxonomy files.
- Output paths for generated QIIME 2 artifacts.
- Any specific classifier settings.

## Troubleshooting

- **Missing File Error**: Ensure all input files exist and paths in the script are correct.
- **Command Not Found**: Ensure QIIME 2 is activated and added to your `$PATH`.

## License

This project is licensed under the MIT License.

For additional support, refer to the QIIME 2 Documentation.
