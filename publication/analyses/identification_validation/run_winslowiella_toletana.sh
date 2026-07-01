#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/winslowiella_toletana_sample_data.tsv --reference_data manual_reruns/winslowiella_toletana_reference_data.tsv --outdir output/manual_reruns/winslowiella_toletana --max_cpus 28 --cpu_scale 2
