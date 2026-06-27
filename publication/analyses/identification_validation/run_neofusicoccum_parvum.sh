#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/neofusicoccum_parvum_sample_data.tsv --reference_data manual_reruns/neofusicoccum_parvum_reference_data.tsv --outdir output/manual_reruns/neofusicoccum_parvum --max_cpus 28 --cpu_scale 2
