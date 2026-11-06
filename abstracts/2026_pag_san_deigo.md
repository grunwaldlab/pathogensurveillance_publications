# Pathogensurveillance: An automated computational pipeline for identification, population genomics, and monitoring of pathogens

ZSL Foster1, M Sudermann2, C Parada-Rojas2, F Iruegas-Bocardo2, R Alcala-Briseno2, JH Chang2, and NJ Grünwald1

1 Horticultural Crops Disease and Pest Management Research Unit, USDA ARS, Corvallis, Oregon, USA

2 Dept. Botany and Plant Pathology, Oregon State University, Corvallis, Oregon, USA

Rapid and automated analysis of populations of pathogen genome sequences is needed for more effective responses to disease outbreaks, but its complexity necessitates advanced bioinformatic techniques.
We developed the pathogensurveillance pipeline for the automated of groups of pathogens and exploration of their genomic diversity.
Pathogensurveillance takes as input raw reads from potentially unidentified eukaryotic or prokaryotic organisms without requiring the user to supply or specify custom reference sequences or databases.
The pipeline automatically determines a taxonomic placement, finds the closest reference genome sequences, maps sequence reads, calls variants, identifies core genes, and reports phylogenetic relationships and identifications.
References are selected and downloaded automatically from the NCBI RefSeq database but can also be supplied by the user.
For each user-defined group of samples, an HTML report with statistics and interactive figures/tables is created.
Advanced users can access the intermediate files to conduct further analyses or customize the report for their own application.
It can be executed on any Linux computer, from laptops to large-scale cloud computing environments.
It is written in Nextflow, allowing it to take advantage of massive computational resources when available, restart failed analyses, or add samples to existing analyses without doing redundant work.
Our pipeline automates and accelerates analysis of whole genome sequence data, which is essential for rapid responses to disease outbreaks, while allowing genomic analysis by non-bioinformaticians.
