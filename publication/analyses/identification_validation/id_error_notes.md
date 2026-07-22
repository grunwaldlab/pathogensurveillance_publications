## Ameyamaea chiangmaiensis (GCF_013376175.1, SRR12082803)

- Sendsketch got the genus and species wrong and even the genus is not in any Sendsketch hits
- A representative of the correct genus was not downloaded by chance
- A user could only downloaded examples of every genus to refine the result
- No reason to think there is anything wrong with the sequence. its assembly has high ANI to others of the same species

## Defluviitalea raffinosedens (GCF_009765695.1, SRR10673227)

- Sendsketch did not even get the order right, no close matches
- Its apparent from ANI (86%) and multigene phologeny that there is no close match, but no way for a user to know how to improve the reference
- It is the reference genome for this species, so it should be reliable

## Desulfoscipio geothermicus DSM 3669 (GCF_900115975.1, SRR4136428)

- ANI values generally low, but closest Desulfoscipio geothermicus (82.3%) is similar to closest named Desulfoscipio gibsoniae DSM 7213 (82.9%)
- Is sister to all Desulfoscipio geothermicus references, but the clade also includes Desulfoscipio gibsoniae DSM 721
- All of the Desulfoscipio geothermicus are lower quality


## Hyphomicrobium denitrificans 1NES1 (GCF_000230975.2, SRR3927022)

- Sendsketch got it right with a perfect 100% match, likely because it was in its database.
- Sourmash found a 98.7% match to Rhodanobacter denitrificans, which is in a different class.
- The multigene phylogeny shows confident clustering in the Rhodanobacter denitrificans clade, which clusters with other Rhodanobacter species.\
- Part of the sequencing project "Hyphomicrobium denitrificans 1NES1". Described in a genome announcement: https://doi.org/10.1128/genomea.00449-13. The sequencing project also sequenced Rhodanobacter strains.
- This looks like a mislabeled sample error because:
  - Both sourmash and the multigene phylogeny confidently cluster it with 3 Rhodanobacter denitrificans isolates (~97.5% ANI)
  - Both do not cluster it with any of the 5 Hyphomicrobium denitrificans isolates included in the analysis (~85.5% ANI)
  - The lab that sequenced it was also sequencing Rhodanobacter strains at the time.

## Macellibacteroides fermentans (GCF_900168155.1, SRR4136532)

- Sourmash and Sendsketch got it right, but multigene tree could not be made

## Microcoleus anatoxicus PTRS3 (GCF_037911295.1, SRR10997082)

- Sendsketch got the family wrong, although Sendsketch and Sourmash best ANI is 94.6%
- 89% ANI to closest named Pseudomonas putida. All the similar Pseudomonas sp. are unnamed.
- This would be interpreted by a user as a resonably good classification
- Shotgun metagenome of cultured Microcoleus anatoxicus strain PTRS-3 (non-axenic)
- Removed from analysis since it was from a metagenome 

## Neofusicoccum parvum UCRNP2 (GCF_000385595.1, SRR654031)

- Sendsketch got the genus wrong
- By chance, a representative of the correct genus was downloaded (Neofusicoccum cordaticola)
- A human user would natually return the pipeline with custom references from that genus
- The ANI is 96%, so a human might rerun with better references or belive the incorrect classification
- the corresponding assembly is suppressed on refseq, but no justification given

## Niveibacterium umoris (GCF_014197015.1, SRR10873147)

- Sendsketch got the genus wrong, but family right. The genus is not in any of the Sendsketch hits
- Sourmash got the genus right, matching the only representative of the genus downloaded
- The ANI is low, 91%, so a human user would natually return the pipeline with custom references from that genus

## Prosthecobacter debontii (GCF_900167535.1, SRR4090974)

- Sendsketch got the species right, with 100% ANI, so it was probably in the database
- All Sourmash ANI values are low (< 83%)
- Correct species in in the multigene phylogeny, but not sister to the query.
- A user would see that the classification is not reliable, but its unclear if adjusting references manually would help

## Rehaibacterium terrae (GCF_014202935.1, SRR12223103)

- Sendsketch got the family wrong and the ANI is low (86%)
- Its apparent from ANI (86%) and multigene phologeny that there is no close match, but no way for a user to know how to improve the reference

## Scheffersomyces spartinae (GCF_019049425.1, SRR14893465)

- Is acutally correct; phylogenetic revision

## Serratia bockelmannii (GCF_051803255.1, SRR33967303)

- ANI and multigene phylogeny clusters it confindently with Serratia marcescens and many unnamed species
- There was a Serratia bockelmannii representative with ~98.9% ANI, but this was pushed out of the analysis by many Serratia marcescens isolates with ~99.1% ANI
- The presence of many 99.2% ANI unknown species matches prevented the 98.9% Serratia bockelmannii representative from being included in the phylogeny
- Serratia bockelmannii is considered to be part of the Serratia marcescens species complex (10.1186/s13756-025-01632-4) so one could argue that this is a correct ID or that the closest Serratia marcescens are mislabeled.

## Stigmatella aurantiaca (GCF_900109545.1, SRR4236974)		

- Is a high quality type strain, sequenced as part of the "Genomic Encyclopedia of Archaeal and Bacterial Type Strains, Phase II"
- Sendsketch got it right with a perfect 100% match, likely because it was in its database.
- 2 Stigmatella aurantiaca references at 90% ANI. These are the only available references and have inconclusive taxonomy checks (https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000168055.1/)
- https://img.jgi.doe.gov/cgi-bin/m/main.cgi?section=TaxonDetail&page=taxonDetail&taxon_oid=2693429895
- The closest match Stigmatella hybrida is from type strain had 98% ANI
- Looks like the genus Stigmatella was renamed to Allostigmatella (10.1099/ijsem.0.007208)
- Limited and dubious reference data prevents a confident ID, but the 98% match to Stigmatella hybrida could mislead a user.
- "We demonstrate that established comparative genome analysis thresholds for the designation of novel species indicate that M. xanthus DSM 16526T and M. virescens DSM 2260T, St. aurantiaca DSM 17044T, Stigmatella erecta DSM 16858T, and Stigmatella hybrida DSM 14722T are not different species."(https://www.frontiersin.org/journals/microbiology/articles/10.3389/fmicb.2023.1227206/full)


## Tatumella ptyseos (GCF_030552895.1, SRR24356799)

- Sendsketch got the genus right, but not the genus. The correct species is far down the hit list, but is ~80% ANI
- generally lower sourmash ANI (~90%)
- A representative of the correct species was downloaded, but the ANI value was 83%, so was not selected for the multigene tree
- Clusters with Rosenbergiella in multigene tree 
- "To date, the genus Rosenbergiella is classified within the family Enterobacteriaceae, even when its closest phylogenetic relatives
are the genera Phaseolibacter and Tatumella [17, 18], both of which belong to the family Erwiniaceae since the major taxonomic revision..."

## Winslowiella toletana (GCF_032164335.1, SRR25916662)

- Sendsketch got the genus right, but not the genus. The correct species is far down the hit list, but is ~86% ANI
- Sourmash closest is an unnamed species, around 92% to Winslowiella iniecta and 88% to the correct representative
- The correct species is in the multigene tree, but it is approximatly between arboicola, tolenta, and iniecta


