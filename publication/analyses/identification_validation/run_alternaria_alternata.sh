#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/alternaria_alternata_sample_data.tsv --reference_data output/reference_metadata.tsv --outdir output/manual_reruns/alternaria_alternata --max_cpus 28 --cpu_scale 2 --n_ref_strains 1000 --n_ref_species '100%'
