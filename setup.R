# Installation instructions
install.packages("BiocManager")
install.packages("devtools")
devtools::install_github('satijalab/seurat-data')
BiocManager::install("Seurat")
InstallData("stxBrain")
install.packages("tidyverse")

# You might need to restart RStudio after installing above packages.

# Computationally intensive step needs parallelization with multicore
library(future)
plan("multicore", workers = 7)
plan()

brain <- FindSpatiallyVariableFeatures(brain, assay = 'SCT', features = VariableFeatures(brain)[1:1000], selection.method = 'markvariogram')