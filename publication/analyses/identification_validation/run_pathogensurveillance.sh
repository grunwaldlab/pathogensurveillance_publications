#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input output/sample_metadata.tsv --reference_data output/reference_metadata.tsv --outdir output/pathsurveil_output --max_samples 170 --max_cpus 28 --cpu_scale 1
