
# Single-celll RNA-Seq annotations
## Searching large-scale scRNA-seq databases via unbiased cell embedding with Cell BLAST
    \cite{cao2020searching
    
### Highlights
Herein, we present Cell BLAST, cell-querying method built on a neural network-based generative model and a cell-to-cell similarity metric.

Intuitively, low-dimensional embeddings of cells from the same cell type should reconstruct each other better than cells from different cell types. 

Our generative model combined with posterior-based similarity metric enables Cell BLAST to model the continuous spectrum of cell states more accurately.

Constructing a large-scale well-curated reference database.

A comprehensive and well-curated reference database is crucial for the practical application of Cell BLAST. 

Empirical case study shows that both the incorporation of hit similarity and ontology structure lead to improved Cell Ontology assignment.

Metadata were further manually curated by adding additional descriptions in the paper to acquire the most detailed information of each cell.

We unified raw cell type annotation by Cell Ontology. Closest Cell Ontology terms were manually assigned based on the Cell Ontology description and context of the study.

BLAST2CO. BLAST2CO can perform Cell Ontology (CL) inference for query cells as long as the reference datasets are annotated with Cell Ontology. For each CL existent in the hit cells, BLAST2CO calculates its confidence score by summing up the similarity of all hit cells belonging to the particular CL. 
The confidence scores are assigned to corresponding nodes in the CL graph, and then propagated to parent nodes along the graph.

If more than one CLs match the above conditions, the query cell is labeled as “ambiguous”. If no CL matches the above conditions, the query cell is labeled as “rejected.”

### Comments

"cell type resolution" is an interesting concept. 

Phrases like "All five ionocytes predicted as club cells by Cell BLAST are also agreed on by scmap." cast a shadow of doubt on the original annotations. 
"continuous spectrum of cell states more accurately."  cell states are very explictly assumed to lie on a continuous spectrum
Annotation of cell types with Cell Ontology is strictly wrong (albeit being better than no annotatino at all)
Annotates each single cell with a ranking of "terminal" cell types. 

The ppropagation of annotations is very useful. 

## CellFishing.jl: an ultrafast and scalable cell search method for single-cell RNA sequencing
    \cite{sato2019cellfishing
    
### Highlights
We propose CellFishing.jl, a new method for searching atlas-scale datasets for similar cells.

This trend of sequencing higher numbers of cells is expected to continue until a complete list of cell types is generated.


Cell type estimation accomplished by matching query cells with similar cells found in anno- tated data sets provides important information concerning the query cells, relying on a single similarity score may result in overlooking significant differences in their gene expressions.

For example, the developmental stages of the hematopoietic lineage from stem cells to completely differentiated cells are often characterized by the expression level of few marker genes. 
Additionally, using scRNA-seq, Park et al. revealed that genes related to Mendelian disease are differentially expressed in specific cell types.
These facts indicate that mutually similar cells of the same type but under different conditions can be further distin- guished by noting differentially expressed genes (DEGs) between these cells

We next confirmed that the hashed expression profiles preserve the original differences among cell types by visualizing low-dimensional embedding of the data.

CellFishing.jl evidently includes minor cell types, although the scores are relatively unsta- ble for those cell types. For example, while Baron2016 contains only 18 Schwann cells and seven T cells, CellFishing.jl found these cell types with high consistency.

Comparing transcriptome expressions across different species provides important information on the function of unknown cell types. Since the Baron2016 data set includes cells derived from human and mouse, we attempted to match cells between both species. A total of 12,413 one-to-one gene pairs were included

### Comments

What is a "complete list of cell types" !?


## Probabilistic gene expression signatures identify cell-types from single cell RNA-seq data
    \cite{grabski2020probabilistic
    
### Highlights

Here we present a computationally light statistical approach, based on Naive Bayes, that leverages public datasets to combine information across thousands of genes and probabilistically assign cell-type identity.

This improved granularity permits the identification or discovery of distinct populations of cell-types within the tissues under study. To effectively accomplish this, it is important to classify cells reliably into known cell-types, in particular cells that are present in many tissues such as immune system cells.

For instance, in CD4 cells, the markers had non-zero counts in anywhere from 0\% to 38\% of the cells. As a result, many marker genes that have been established as reliable indicators of cell-type on the bulk level are no longer adequate on the single cell level.

Naive Bayes [12], that defines a conditional distribution for each target cell by estimating a cell-type-specific expression rate for each gene

"These findings suggest that the identity assigned to a given cell depends on the size of the dataset, in a way that is not representative of the actual cell-types in the data"


Specifically, we selected marker genes for CD4 (IL7R, CD4, CTLA4, FOXP3, IL2RA, PTPRC), CD14 (CD14, LYZ, FCGR3A, CD68, S100A12), CD8 (CD8A, CRTAM, NCR3, CD3D), and NK cells (GNLY, NKG7, PRR5L, S1PR5, NCAM1) that have been curated and well-established in the literature as discriminating among cell types 

We explicitly include the total number of observed transcripts Ni to account for the varying coverage across cells [24]. Note that the vector (λ1k, . . . , λJk)? can be considered the expression profile that defines cell-type k.

this approach allows the certainty of the classification to be directly quantified. For example, if a target cell has a relatively low probability of belonging to any of the reference cell-types, this might indicate contamination or potentially a novel cell-type population.

We explicitly model the cell-type-specific probability distributions of these genes with a hierarchical approach that increases power in the presence of sparsity.


### Comments

Interesting. We want to study the cell types themselves, not the cells per se. 


## CHETAH: a selective, hierarchical cell type identification method for single-cell RNA sequencing
    \cite{de2019chetah
    
### Highlights
CHETAH (CHaracterization of cEll Types Aided by Hierarchical classification) is an accurate cell type identification algorithm.

Single cell RNA sequencing has paved the way for discovering previously uncharacterized cell types and this application too would greatly benefit from efficient identification of known cell types prior to focusing on new types

Analyses are becoming more complex given the fast-expanding catalogue of defined cell types (15).

For example, if the evidence for a very specific cell type assignment such as effector CD8 T-cell is not strong enough, assignment such as T cell may  be useful.

The correct T-cell subtype may be not part of the reference dataset, or even that there is in- sufficient read-depth for the more specific call to be made. CHETAH’s classification is a stepwise process that traverses the tree and, depending on the available evidence, ends at one of the reference cell types or halts at the unassigned or one of the intermediate types.
 
It is firmly established that hierarchical trees derived from clustering gene expression data reflect many aspects of the underlying biology (52). <-- Strong affirmation -->

For the method presented here, the definition of cell type is pragmatic and can best be described as any group of cells annotated within a reference set as belonging together.

### Comments

argues that we need to identify what we know before we can efficiently focus on new types. 

explicitly assumes one tree

explicitly defines cell type! awesome!


## R Package: Single-cell RNAseq cell cluster labelling by reference
    \url{https://www.bioconductor.org/packages/release/bioc/vignettes/celaref/inst/doc/celaref_doco.html
    
### Highlights

 The annotation of the ‘cell type’ of each cluster is performed by a domain expert biologist 
 
 A list of ‘Up’ genes are extracted for each query cluster. Then, those genes are looked up in the ranking of genes in each reference cell cluster. 
 
 There can be none, one or multiple reference group similarities for the query group.
 
 
### Comments

Uses a lot of p values, but null hypothesis are not clear. The word "null" is not mentioned once.


## PanglaoDB: a web server for exploration of mouse and human single-cell RNA sequencing data
    \cite{franzen2019panglaodb
    
### Highlights

A community-curated cell-type marker compendium.

Deposited data often remain difficult to access as it requires significant pre-processing to become useful for regular analysis.

Our database provides a manually curated list of cell-type markers that can be incorporated into novel algorithms for inference of cell types.

The database of cell type markers was compiled by
manual curation of thousands of published articles and abstracts, and by querying internet search engines with strings such as ‘GENE1 is expressed in ∗ cells’.

The cell-type identity is then determined using the collection of cell-type marker genes. Some marker genes are found in multiple cell types and are less informative for cell-type inference.

In such cases it is possible to compare if the predicted cell type matches the ‘biological’ cell type. We identified 17 independent datasets with homogeneous cell-type populations, where the biological cell type has been reported.

At the time when this work was initiated, there was no published database or comprehensive list of genes that can be used for automatic cell-type assignment [CellMarker (41) came out when this manuscript was in preparation].



### Comments