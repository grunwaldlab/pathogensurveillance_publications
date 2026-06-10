## Ameyamaea chiangmaiensis (GCF_013376175.1, SRR12082803)

- Sendsketch got the genus and species wrong and even the genus is not in any Sendsketch hits
- A representative of the correct genus was not downloaded by chance
- A user could only downloaded examples of every genus to refine the result

## Defluviitalea raffinosedens (GCF_009765695.1, SRR10673227)

- Sendsketch did not even get the order right, no close matches
- Its apparent from ANI (86%) and multigene phologeny that there is no close match, but no way for a user to know how to improve the reference

## Desulfoscipio geothermicus DSM 3669 (GCF_900115975.1, SRR4136428)

- ANI values generally low, but closest Desulfoscipio geothermicus (82.3%) is similar to closest named Desulfoscipio gibsoniae DSM 7213 (82.9%)
- Is sister to all Desulfoscipio geothermicus references, but the clade also includes Desulfoscipio gibsoniae DSM 721
- All of the Desulfoscipio geothermicus are lower quality

## Macellibacteroides fermentans (GCF_900168155.1, SRR4136532)

- Sourmash and Sendsketch got it right, but multigene tree could not be made

## Microcoleus anatoxicus PTRS3 (GCF_037911295.1, SRR10997082)

- Sendsketch got the family wrong, although Sendsketch and Sourmash best ANI is 94.6%
- 89% ANI to closest named Pseudomonas putida. All the similar Pseudomonas sp. are unnamed.
- This would be interpreted by a user as a resonably good classification

## Neofusicoccum parvum UCRNP2 (GCF_000385595.1, SRR654031)

- Sendsketch got the genus wrong
- By chance, a representative of the correct genus was downloaded (Neofusicoccum cordaticola)
- A human user would natually return the pipeline with custom references from that genus
- The ANI is 96%, so a human might rerun with better references or belive the incorrect classification

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


