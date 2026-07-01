#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/tatumella_ptyseos_sample_data.tsv --reference_data manual_reruns/tatumella_ptyseos_reference_data.tsv --outdir output/manual_reruns/tatumella_ptyseos --max_cpus 28 --cpu_scale 2 --n_ref_strains 1000 --n_ref_species '100%'
