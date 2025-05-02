#!/usr/bin/bash
OUTDIR=output
mkdir -p $OUTDIR

ANIclustermap -i ./input/minimal_dataset -o ${OUTDIR}/01_minimal_dataset \
    --fig_width 8 --fig_height 5

ANIclustermap -i ./input/minimal_dataset -o ${OUTDIR}/02_minimal_dataset_annotation \
    --fig_width 8 --fig_height 5 --annotation

ANIclustermap -i ./input/small_dataset -o ${OUTDIR}/03_small_dataset \
    --fig_width 15

ANIclustermap -i ./input/small_dataset -o ${OUTDIR}/04_small_dataset_annotation \
    --fig_width 15 --annotation

ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/05_normal_dataset \
    --fig_width 15

ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/06_normal_dataset_annotation \
    --fig_width 20 --annotation

# Normal parameter
ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/ANIclustermap_result01 \
    --fig_width 15

# Change cmap_gamma parameter
ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/ANIclustermap_result02 \
    --fig_width 15 --cmap_gamma 0.5

# Change cmap_colors parameter
ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/ANIclustermap_result03 \
    --fig_width 15 --cmap_colors white,orange,red

# Change cmap_ranges parameter
ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/ANIclustermap_result04 \
    --fig_width 15 --cmap_ranges 80,85,90,92.5,95,97.5,100

# Add ANI value annotation parameter
ANIclustermap -i ./input/normal_dataset -o ${OUTDIR}/ANIclustermap_result05 \
    --fig_width 20 --fig_height 15 --annotation
