# Code and data for reproducing, "Seed dormancy increases population persistence in an annual plant in an environment-dependent manner"

Authors: Brandie Quarles-Chidyagwai, Kathleen Donohue

Accepted for publication in Annals of Botany

## Corresponding author contact:
-  bmquarles@ucdavis.edu

## Software version and package information
This code has been verified to run on R version 4.5.3 and SAS 9.4. To run the R code, you will need packages: tidyverse v. 2.0.0, gridExtra v. 2.3, popbio v. 2.8, boot v. 1.3-32, broom v. 1.0.12.

## The Files
Folders in this repository
-  Raw.Data
-  Processed.Data
-  Scripts
-  Figures

### Raw.Data
This folder includes all data collected and used for analyses in this study. You must download this data folder from Dryad (Dataset DOI: 10.5061/dryad.t1g1jwtjd) in order to run the code in the Scripts folder.

### Processed.Data
This folder includes all data files output by the R scripts and other processed data files. You must download this data folder from Dryad (Dataset DOI: 10.5061/dryad.t1g1jwtjd) in order to run the code in the Scripts folder.

### Figures
This folder includes all figures output by the R scripts, labeled to match the figure numbers in the mauscripts. 

### Scripts 
This folder includes all scripts used for the anlyses described in the manuscript, including the R files used to process the data and produce the figures, along with the SAS files used for the statistical analyis. Note: "PopDemog_prep.Rmd" must be run prior to "PopDemog_figs.Rmd", "SeasonalGerm_PopCages.Rmd", and "ProjectionMatrix.Rmd"; "PopPersistence.Rmd" must be run prior to "PopPers_Figs.Rmd."

