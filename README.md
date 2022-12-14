# R_Workshop_BCCHR_2022

Hello all! The workshop is done now. If there is any question, please contact me: baharvand79f@gmail.com
Also, there is a chance to update the material or add further instructions and training files. If you want to receive an e-mail for the updates, please fill this [form](https://forms.gle/gLPQLgavpiAgy8AB7)
If you have already participated in the workshop, please let me know your feedback by filling out this [form](https://forms.gle/yFGRZDyr3yxQQkgJ6). It will help me to improve my work.

# Introduction

Welcome to the R workshop! Below you'll find prerequisites for the classes. This file and the repository will be updated before each session. The workshop will be a code-along and in-person workshop, and you do not need any prior knowledge of R. After each session, please fill out the [feedback form](https://forms.gle/yFGRZDyr3yxQQkgJ6).

# Session 1: Monday, 08/29/2022, Room 3113, 11 AM - 1 PM

## Title

Introduction to R

## Learning objectives

-   What is R and R Studio

-   Variables and missing values

-   Operators

-   Functions

-   Conditional statements

-   Data structures

-   Read and write files

-   Data wrangling

## Prerequisites

1.  Install R-4.2.1:

    You can download R from these links:

    [Download R-4.2.1 for Windows](https://cran.r-project.org/bin/windows/base/)

    [Download R-4.2.1 for Mac OS](https://cran.r-project.org/bin/macosx/)

2.  Install RStudio 2022.07.1:

    You can download RStudio from this link:

    [Download RStudio 2022.07.1](https://www.rstudio.com/products/rstudio/download/#download)

3.  Install "tidyverse", "readr", and "dplyr" packages:

    Open RStudio and click on the Packages tab in the panel. You can install them by writing their names in the new window.

    ![](images/paste-8AC2648E.png)

# Session 2: Tuesday, 08/30/2022, Room 3113, 1 - 3 PM

## Title

Bulk RNA-seq Data Analysis with the DESeq2 Package

## Learning objectives

-   how does a count table look like
-   how to perform differential expression analysis
-   how to visualize your results

## Prerequisites

Install tidyverse, EnhancedVolcano, ggrepel, pheatmap, RColorBrewer, d3heatmap, htmlwidgets, BiocManager, and DESeq2 packages.
Run this chunk of code for this purpose.
install.packages('tidyverse')
install.packages('ggrepel')
install.packages('pheatmap')
install.packages('RColorBrewer')
install.packages('htmlwidgets')
install.packages('BiocManager')
BiocManager::install('EnhancedVolcano')
BiocManager::install("DESeq2")
install.packages('devtools')
devtools::install_github('talgalili/d3heatmap')

# Session 3: Wednesday, 08/31/2022, Room 2108, 1 - 3 PM

## Title

Pathway Analysis in R

## Learning objectives

-   what is pathway analysis, and what are the different types
-   how to perform GSEA
-   how to perform ORA
-   how to visualize your results

## Prerequisites

Intstall AnnotationDbi, org.Mm.eg.db, clusterProfiler, enrichplot, europepmc, and ggridges packages.
Run this chunk of code for this purpose.
BiocManager::install("AnnotationDbi")
BiocManager::install("org.Mm.eg.db")
BiocManager::install("clusterProfiler")
BiocManager::install("enrichplot")
install.packages("europepmc")
install.packages(" ggridges")

# UPDATES

-   08/24/2022: README file added
-   08/29/2022: Session 1 completed
-   08/30/2022: Session 2 completed
-   08/31/2022: Session 3 completed
-   09/04/2022: Files are updated
