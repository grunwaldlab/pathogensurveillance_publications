---
output:
  word_document: default
  html_document: default
---
# Pathogensurveillance: An automated computational pipeline for identification, population genomics, and monitoring of pathogens

Zachary S. L. Foster, Martha A. Sudermann, Camilo Parada-Rojas, Claire Worthy, Logan K. Blair, Fernanda Iruegas-Bocardo, Upasana Dhakal, Alexandra J. Weisberg, Hung Phan, Jeff H. Chang, Niklaus J. Grünwald

1 Horticultural Crops Disease and Pest Management Research Unit, USDA-ARS, Corvallis, Oregon, USA

2 Department of Botany and Plant Pathology, Oregon State University, Corvallis, Oregon, USA

Rapid and automated analysis of pathogen populations is needed for more effective responses to disease outbreaks, but the complexity of these analyses necessitates advanced bioinformatics techniques.
We developed the pathogensurveillance pipeline to automate the analysis of populations of pathogens and explore their genomic diversity.
Pathogensurveillance accepts raw reads from potentially unidentified eukaryotic or prokaryotic organisms without requiring users to provide custom reference sequences or databases.
The pipeline automatically determines taxonomic placement, finds the closest reference genome sequences, maps reads, calls variants, identifies core genes, and reports phylogenetic relationships and taxonomic identifications.
References are selected and downloaded automatically from the NCBI RefSeq database but can also be supplied by the user.
For each user-defined group of samples, the pipeline creates an HTML report with statistics and interactive figures and tables.
Advanced users can access the intermediate files to conduct further analyses or customize the report for their own application.
It can be run on any Linux computer, from a laptop to a large-scale cloud-computing environment.
Written in Nextflow, it can take advantage of large computational resources when available, resume failed analyses, and add samples to existing analyses without redundant work.
Our pipeline automates and accelerates the analysis of whole-genome sequence data, which is essential for rapid responses to disease outbreaks, while making genomic analysis accessible to non-specialists.
