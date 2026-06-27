#!/usr/bin/env bash

nextflow run ~/projects/pathogensurveillance/main.nf -profile docker -resume --input manual_reruns/ameyamaea_chiangmaiensis_sample_data.tsv --reference_data output/reference_metadata.tsv --outdir output/manual_reruns/ameyamaea_chiangmaiensis --max_cpus 28 --cpu_scale 2 --n_ref_genera '100%'
