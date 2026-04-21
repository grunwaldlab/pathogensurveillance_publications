# NCBI Assembly and SRA Identification Validation

This directory contains an R Markdown workflow for querying NCBI databases to identify families with type specimen assemblies that have associated raw sequencing data (SRA).

## Main Document

**`ncbi_assembly_sra_validation.Rmd`** - The main analysis workflow that:

1. Queries NCBI Taxonomy for families in Fungi, Bacteria, Plants, and Animals
2. Randomly samples 10 families per kingdom (configurable)
3. Downloads assembly metadata for selected families
4. Identifies species with:
   - Type specimen assemblies
   - At least 5 additional assemblies for the same species
   - SRA data linked to the same BioSample as the type assembly
5. Generates a table with family, species, assembly counts, type accession, and SRA IDs

## Usage

### Prerequisites

Install required R packages:

```r
install.packages(c("rentrez", "dplyr", "purrr", "tidyr", "jsonlite", 
                   "httr", "progress", "tibble", "readr", "rmarkdown", "knitr"))
```

### Running the Analysis

#### Option 1: Using RStudio

1. Open `ncbi_assembly_sra_validation.Rmd` in RStudio
2. Click "Knit" or use Ctrl+Shift+K
3. Configure parameters in the knit dialog

#### Option 2: Using R Command Line

```r
rmarkdown::render("ncbi_assembly_sra_validation.Rmd", 
                  params = list(
                    families_per_kingdom = 10,
                    min_assemblies_per_species = 5,
                    max_assemblies_per_family = 1000,
                    include_refseq = TRUE,
                    include_genbank = TRUE,
                    random_seed = 42,
                    api_key = "your_api_key_here",
                    cache_dir = "./cache",
                    output_file = "validation_results.tsv"
                  ))
```

#### Option 3: Command Line

```bash
Rscript -e "rmarkdown::render('ncbi_assembly_sra_validation.Rmd')"
```

## Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `families_per_kingdom` | 10 | Number of families to randomly sample per kingdom |
| `min_assemblies_per_species` | 5 | Minimum additional assemblies required per species (excluding type) |
| `max_assemblies_per_family` | 1000 | Maximum assemblies to query per family (for performance) |
| `include_refseq` | TRUE | Include RefSeq assemblies (GCF_) |
| `include_genbank` | TRUE | Include GenBank assemblies (GCA_) |
| `random_seed` | 42 | Seed for reproducible random sampling |
| `api_key` | "" | NCBI API key (optional but recommended) |
| `cache_dir` | "./cache" | Directory to cache API results |
| `output_file` | "validation_results.tsv" | Output filename |

## Getting an NCBI API Key

An API key is **strongly recommended** to increase the rate limit from 3 to 10 requests per second:

1. Create/login to your [MyNCBI account](https://account.ncbi.nlm.nih.gov/)
2. Go to [Account Settings](https://account.ncbi.nlm.nih.gov/settings/)
3. Click "Create an API key"
4. Copy the key and use it in the `api_key` parameter

## Output Files

### Main Output

**`validation_results.tsv`** - Tab-separated table with columns:
- `kingdom`: Kingdom name
- `family`: Family scientific name
- `species`: Species scientific name
- `assembly_count`: Total assemblies for this species
- `type_assembly_accession`: Type specimen assembly accession
- `sra_accessions`: Semicolon-separated SRA accessions

### Detailed Output

**`validation_results_detailed.tsv`** - Extended information including:
- Species taxonomy ID
- BioSample accession
- Number of SRA datasets
- Assembly names

### HTML Report

**`ncbi_assembly_sra_validation.html`** - Complete analysis report with visualizations

## Cache Directory

The `cache/` directory stores intermediate results to avoid re-querying NCBI:

- `families_kingdom_*.rds` - Family lists per kingdom
- `assemblies_family_*.rds` - Assembly metadata per family
- `sra_*.rds` - SRA link results per BioSample

**To force re-querying**: Delete the relevant cache files or the entire cache directory.

## Workflow Details

### Step 1: Taxonomy Query

Uses `entrez_search(db="taxonomy")` with queries like:
```
txid4751[Subtree] AND family[Rank]
```

### Step 2: Random Sampling

Stratified random sampling ensures exactly N families per kingdom (or all available if fewer).

### Step 3: Assembly Metadata

Uses `entrez_search(db="assembly")` and `entrez_summary()` to retrieve:
- Assembly accessions
- Organism information
- Type material status
- BioSample links

### Step 4: Species Filtering

Groups assemblies by species and filters for:
- At least 1 type assembly
- At least N additional assemblies

### Step 5: SRA Verification

Uses `entrez_link(dbfrom="biosample", db="sra")` to verify SRA data is linked to the same BioSample as the type assembly.

### Step 6: Output Generation

Creates tabular output with all required information.

## Troubleshooting

### Rate Limit Errors

If you see errors about rate limits:
1. Get an NCBI API key (see above)
2. Increase delays between requests (modify `Sys.sleep()` values in code)

### Empty Results

If no species meet the criteria:
- Check that assemblies are available for the sampled families
- Verify that type material is properly annotated in NCBI
- Consider reducing `min_assemblies_per_species`
- Try different random families (change `random_seed`)

### Memory Issues

If R runs out of memory:
- Reduce `max_assemblies_per_family`
- Process kingdoms separately
- Increase R's memory limit: `memory.limit(size = 16000)` (Windows) or use 64-bit R

## Notes

- The workflow respects NCBI's rate limits by including delays between requests
- All API results are cached to allow resumption of interrupted runs
- Type material identification relies on NCBI's annotations
- SRA links must be explicitly present in NCBI's cross-reference database

## Citation

If using this workflow in publications, please cite:

1. The rentrez package: 
   Winter DJ (2017). "rentrez: An R package for the NCBI eUtils API." 
   The R Journal, 9(2), 520-526. https://doi.org/10.32614/RJ-2017-058

2. NCBI databases as appropriate:
   - [NCBI Assembly](https://www.ncbi.nlm.nih.gov/assembly)
   - [NCBI SRA](https://www.ncbi.nlm.nih.gov/sra)
   - [NCBI Taxonomy](https://www.ncbi.nlm.nih.gov/taxonomy)

## License

MIT License
