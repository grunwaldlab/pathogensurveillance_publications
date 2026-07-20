#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/stigmatella_aurantiaca_sample_data.tsv --reference_data manual_reruns/stigmatella_aurantiaca_reference_data.tsv --outdir output/manual_reruns/stigmatella_aurantiaca --max_cpus 28 --cpu_scale 2 --n_ref_context 30 --n_ref_closest 10 --n_ref_closest_named 6

