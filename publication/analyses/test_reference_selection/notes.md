



Metadata and sequence for 541 genomes from the *Gilliamella* genus (taxon ID 1193503) were downloaded with the following commands:

```
datasets download genome taxon 1193503
unzip ncbi_dataset.zip
mkdir -p data/assemblies
mv ncbi_dataset/data/**/*.fna data/assemblies/
mv ncbi_dataset/data/assembly_data_report.jsonl data/assembly_metadata.jsonl
rm -rf ncbi_dataset ncbi_dataset.zip md5sum.txt README.md
```
```
