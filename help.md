---
title: "Help document"
output: html_document
#runtime: shiny_prerendered
---

[//]: # (This chunk is necessary to guarantee the app will rescale with different window sizes.)

<style type="text/css">
           body {          
           max-width:100%;
           padding:0;
           }
</style>

##  Introduction

Understanding the aetiological relationships between multiple (>2) complex diseases can provide insights into shared pathogenic themes which can then be used to inform therapeutic intervention. However, this has proved challenging for a number of reasons. In our paper [**'Genetic feature engineering enables characterisation of shared risk factors in immune-mediated diseases'**](https://genomemedicine.biomedcentral.com/articles/10.1186/s13073-020-00797-4), we expand on these challenges and describe a novel approach *cupcake* that seeks to overcome them. In the paper we propose a statistical framework that allows the creation of a lower-dimensional basis that summarises the sharing of genetic risk across a set of clinically related diseases. Using publicly available GWAS summary stats we apply the framework to the study of immune-mediated disease (IMD) to create an IMD specific basis. 
One of the traits of interest for us are *Blood cell levels*, since blood cells play a crucial role in homeostasis, oxygen and nutrient transport, and innate and acquired immune responses. Qualitative or quantitative abnormalities of blood cell formation, and of their physiological and functional properties, have been associated with predisposition to cancer and with many severe congenital disorders including anaemias, bleeding, and thrombotic disorders and immunodeficiencies. 
Thus, we decided to build a basis of blood cell levels, using data from [Astle et al., 2016](https://doi.org/10.1016/j.cell.2016.10.042), which comprises 36 GWAS datasets from blood cell-related traits on ~170,500 individuals on average. See below for the full list of traits.


This software allows a user to upload their own GWAS summary data and project onto this basis. We envisage four main scenarios where this might be useful:

1. You want to understand if a trait shares a common genetic risk component with Blood cell counts.
2. You suspect your trait or traits might have a genetic relationship/shared aetiology with a particular blood cell, but you require robust evidence.
3. Your GWAS is clinically related to blood cell counts but is of a modest sample size preventing elucidation of its genetic architecture.
4. You want to assess the genetic architecture of a trait in the general context of blood cells, this can be useful, for example, in describing the differences between clinically related subtypes of disease.


## List of traits

For improved visualisation, we used acronyms for the blood cell traits in the plot. Here is the dictionary:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Trait </th>
   <th style="text-align:left;"> Full_trait_name </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> BANEC </td>
   <td style="text-align:left;"> Sum of Basophil and Neutrophil counts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BASC </td>
   <td style="text-align:left;"> Basophil count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BASPG </td>
   <td style="text-align:left;"> Basophil percentage of granulocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BASPL </td>
   <td style="text-align:left;"> Basophil percentage of Leukocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CORV </td>
   <td style="text-align:left;"> Mean corpuscular volume </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EOBAC </td>
   <td style="text-align:left;"> Sum of Eosinophil and Basophil Counts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EOPG </td>
   <td style="text-align:left;"> Eosinophil percentage of granulocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EOPL </td>
   <td style="text-align:left;"> Eosinophil percentage of leucocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> EOSC </td>
   <td style="text-align:left;"> Eosinophil count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ERYC </td>
   <td style="text-align:left;"> Erytocyte count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GRAC </td>
   <td style="text-align:left;"> Granulocyte count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GRPMW </td>
   <td style="text-align:left;"> Granulocyte percentage of myeloid white cells </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HBC </td>
   <td style="text-align:left;"> Hemoglobin concentration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> HEMAT </td>
   <td style="text-align:left;"> Hematocrit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LEUC </td>
   <td style="text-align:left;"> Leukocyte count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LYMC </td>
   <td style="text-align:left;"> Lymphocyte Count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LYMPL </td>
   <td style="text-align:left;"> Lymphocyte percentage of Leukocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MCH </td>
   <td style="text-align:left;"> Mean Corpuscular Hemoglobin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MCHC </td>
   <td style="text-align:left;"> Mean corpuscular hemoglobin concentration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MONC </td>
   <td style="text-align:left;"> Monocyte Count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MONPL </td>
   <td style="text-align:left;"> Monocyte percentage of leukocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MWCC </td>
   <td style="text-align:left;"> Myeloid White Cell Count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NEEOC </td>
   <td style="text-align:left;"> Sum of neutrophil and eosinophil counts </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NEPGR </td>
   <td style="text-align:left;"> Neutrophil Percentage of Granulocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NEPL </td>
   <td style="text-align:left;"> Neutrophil percentage of leucocytes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NEUC </td>
   <td style="text-align:left;"> Neutrophil Count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PLAC </td>
   <td style="text-align:left;"> Platelet count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PLACR </td>
   <td style="text-align:left;"> Platelet crit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PLADW </td>
   <td style="text-align:left;"> Platelet component Distribution Width </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PLAV </td>
   <td style="text-align:left;"> Mean platelet volume </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RBCW </td>
   <td style="text-align:left;"> Red Blood Cell Distribution Width </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RETC </td>
   <td style="text-align:left;"> Reticulocyte count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RETFRC </td>
   <td style="text-align:left;"> Reticulocyte fraction of red cells </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RETHLC </td>
   <td style="text-align:left;"> High light scatter reticulocyte count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RETHLPRC </td>
   <td style="text-align:left;"> High Light Scatter Reticulocyte percentage of red cells </td>
  </tr>
  <tr>
   <td style="text-align:left;"> RETIF </td>
   <td style="text-align:left;"> Immature fraction of reticulocytes </td>
  </tr>
</tbody>
</table>



## Methodology

A  detailed account of the methodology is available in the paper but here is a brief explanation aimed at broad audience. Assessing the shared genetic architecture for more than two traits is challenging, the number of variants assayed in a GWAS is often in the millions which quickly makes useful comparisons problematic. One approach is dimension reduction; here we make sure that effect sizes (odds ratios) for each disease are with respect to the same allele and then arrange them in a large matrix. We can then perform standard principal component analysis (PCA) on this matrix to create lower-dimensional summaries of the shared and distinct genetic architectures of the input diseases creating a object called a **basis**. Unfortunately this naive approach does not work, the relationships that we are interested in are obscured by other phenomena such as linkage disequillibrium, study heterogeneity (e.g. sample size)  and variant allele frequencies. To overcome this we adapt strategies from genetic fine mapping to train a Bayesian "lens" to focus our attention only on the disease-associated fraction of the genome. We can then apply the lens to matrix of disease variant effect sizes and use this perform PCA and successfully elucidate components of shared genetic risk. 

This lens can be applied to external GWAS datasets, and these reweighted effect sizes can be projected onto this **basis** and their location with basis-space observed. We developed a method to assess whether the location of a projected trait within basis-space is significantly different from what would be expected under the null, thus enabling the kinds of analyses detailed in the introduction.  

We applied **varimax rotation** to the rotation matrix `rot.pca`, with the aim to maximise the amount of variance explained by the different components, and facilitate interpretation of the results. Varimax rotation has the desirable effect to increase high- and low-value loadings and reduce mid-value loadings, thus helping to characterise the different components.

## How to use this tool

Given our focus on the IMD-associated fraction of the genome the basis only require a small subset of variants. The tool itself will attempt to filter uploaded files of GWAS summary statistics to include only these variants, however please note that files greater than 200Mb cannot be accommodated. To upload your own file click the **Upload** button in the *Upload your data* panel on the left hand size and follow the on screen dialogue. 

<!-- To improve accuracy, we have now included the possibility to choose the broad ancestry group of the population that was used in your GWAS (**Select population** menu), and use different LD matrices, tailored to the following populations: Admixed American, African, East Asian, European, and South Asian. We computed such matrices using data from 1000 Genomes Project Phase III. See [here](https://www.internationalgenome.org/faq/which-populations-are-part-your-study/) for more details about specific populations used to generate the matrices. Note that LD matrices are used to calculate delta P-values and confidence intervals, so matrix choice should not affect projection itself. -->

To label your trait on subsequent plots fill in the text box labelled **Trait name**.

Subject to  various checks that are carried out on the uploaded file, the panel **Uploaded data overview** will become populated.
  - **SNPs in the basis** reports the number of variants in the basis and is mainly a sanity check for us to make sure the you have access to the most up to date basis. 
  - **Uploaded SNPs overlapping basis** reports the number (and percentage) of variants that you have uploaded that overlap the basis. **Note that if this percentage is below 95% then results may be unreliable**. See the section on **missing data** for a further discussion of this.
  - **Overall P-value** reports whether over all components your trait is significantly different from baseline.
  - **Most significant component** reports on which component your trait appears to be the most significantly different from baseline.

After your data has been sucessfully projected you will have access to two further tabs on the right hand side. 

### Plot

This is a forest plot that shows for a principal component selected from the control panel on the left. The objective of this plot is for a user to be able to assess whether their traits location for a specific component significantly deviates from baseline and how these relate to traits used to create the basis. To create the baseline, we include a synthetic disease for which all variants have an effect size of zero. Using the example file for IL-10 cytokine concentration, we can see that for PC6 it lies to the right and therefore looks more similar to lymphocyte percentage of leucocytes (LYMPL), platelet count (PLAC) and granulocyte percentage of myeloid white cels (GRPMW). A button **Download plot** allows you to download the current plot as a PDF.

### Table

This table gives the full results for your trait across all components. 

- **PC** labels the principal component.
- **Var.Delta** measures the variance associated projection location with respect to the baseline of your trait onto this component.
- **Delta** shows the difference in location between the projected dataset and the baseline.
- **P** the significance of your projection location.
- **Trait** a label for your trait - see text box **Trait name**. 

For further details on these and their statistical derivations please see our paper. A button **Download table** allows you to download the current table as a csv file. The checkbox **Include basis traits in download** if selected means that **Delta** values for basis traits are also included. **Note** as these traits are used to create the basis they do not have a **Var.Delta** or **P** associated with them. This tabularised data can be useful for your own analyses and plots for example it can be used to create dendrograms of overall disease architectures. See this [vignette](https://chr1swallace.github.io/cupcake/articles/create-basis.html) for further details.  


###  GWAS summary file requirements

In order to analyze your own data, you must provide a GWAS summary statistics file with the following format:

- TSV, CSV, TXT or compressed (i.e. GZ) formats.

- Mapped to the **hg38/GRCh38** build. Note this is different from the [IMDbasisApp](https://grealesm.shinyapps.io/IMDbasisApp/).

- With the following colummns (same order is **not** a requirement), here **OR** is short for odds ratio and is relevant to case/control studies only. The basis actually uses the log of the OR or **BETA** so either can be supplied, with software performing the neccessary conversion. GWAS of quantitative traits can also be projected and by definition will use **BETA**.
  
    - **CHR** (Chromosome)
    - **POS** (Base position in hg38/GRCh38 build)
    - **REF** (Reference allele)
    - **ALT** (Alternative, or effect allele), 
    - **SE** (Standard Error of the log OR, BETA)
    - **BETA** (log OR) *or* **OR**
    - **P** (P-value)
      
**A side note on SNPs and file size**: This App caps the maximum uploaded file size at **200MB**, which might be too small for most current GWAS summary statistics datasets. Our method focuses on 1736 SNPs for projection only, which means that if you filter your dataset to contain only those 1736 SNPs you'll obtain the same results - and it will run faster! 
You can get the list of SNPs by downloading the example dataset, and a detailed explanation of how we chose those 1736 SNPs in the publication (see Citation below).

### Aligning effect sizes 

It is important that the effect sizes (OR/BETA) for projected traits are with respect to the same allele. Currently we assume that the effect is with respect to the ALT allele. Thus prior to uploading please ensure that REF and ALT alleles for your study match the basis and that all effect sizes are with respect to the ALT allele. Further details on how to do this are available [here](https://chr1swallace.github.io/cupcake/articles/project-basis.html).

### Missing data

There is no requirement for a GWAS to be performed on a particular genotyping platform or to have undergone imputation and the variants used by the basis are those that are commonly available across the major platforms (in the paper we demonstrate this has no real effect on the resultant basis), however due to study design some variants may be missing. We provide an **uploaded file overview** panel that shows various metrics for the uploaded file. If you notice the **Uploaded SNPs overlapping basis** is below 95% resultant analysis may be compromised - see the paper for further details.      
  
## Example file

We included a filtered dataset that serves as a default dataset to showcase what should be expected when inputting your own data. You can download this example dataset [here](https://raw.githubusercontent.com/GRealesM/BloodCellBasisApp/master/data/J10_ASTHMA_FinnGen_FinnGenR3_1-ft.tsv).
This dataset is a subset of an Asthma GWAS published by the [FinnGen Project (release 3)](https://www.finngen.fi/en/access_results), and publicly available [here](https://storage.googleapis.com/finngen-public-data-r3/summary_stats/finngen_r3_J10_ASTHMA.gz).

This is an example of dataset format that *should* work:

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> pid </th>
   <th style="text-align:left;"> SNPID </th>
   <th style="text-align:right;"> CHR </th>
   <th style="text-align:right;"> POS </th>
   <th style="text-align:left;"> REF </th>
   <th style="text-align:left;"> ALT </th>
   <th style="text-align:right;"> BETA </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> P </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 10:100344764 </td>
   <td style="text-align:left;"> rs735877 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 100344764 </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:right;"> 0.0277 </td>
   <td style="text-align:right;"> 0.0147 </td>
   <td style="text-align:right;"> 0.059680 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10:100353892 </td>
   <td style="text-align:left;"> rs11190483 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 100353892 </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:right;"> 0.0401 </td>
   <td style="text-align:right;"> 0.0150 </td>
   <td style="text-align:right;"> 0.007497 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10:102135182 </td>
   <td style="text-align:left;"> rs4919611 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 102135182 </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> A </td>
   <td style="text-align:right;"> -0.0227 </td>
   <td style="text-align:right;"> 0.0303 </td>
   <td style="text-align:right;"> 0.453700 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10:102907649 </td>
   <td style="text-align:left;"> rs4532960 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 102907649 </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:right;"> -0.0258 </td>
   <td style="text-align:right;"> 0.0151 </td>
   <td style="text-align:right;"> 0.087390 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10:102920221 </td>
   <td style="text-align:left;"> rs2297786 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 102920221 </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:right;"> -0.0258 </td>
   <td style="text-align:right;"> 0.0151 </td>
   <td style="text-align:right;"> 0.086850 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10:112312914 </td>
   <td style="text-align:left;"> rs11195887 </td>
   <td style="text-align:right;"> 10 </td>
   <td style="text-align:right;"> 112312914 </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:right;"> 0.0264 </td>
   <td style="text-align:right;"> 0.0296 </td>
   <td style="text-align:right;"> 0.371800 </td>
  </tr>
</tbody>
</table>


## Dependencies

** Blood Cell basis App** has been developed using **R** and **Shiny** and is dependent on the following software and **R** packages:

|  |   |
--- | ----
**Software**   | 
R  | Language and environment for statistical computing and graphics
**R packages** |
data.table | Fast aggregation of large data, among other functions
dplyr  | A fast, consistent tool for working with data frame like objects, both in memory and out of memory
knitr  | Tool for dynamic report generation in R
R.utils | Utility functions useful when programming and developing R packages, dependency of cupcake and/or annotSnpStats packages
shiny  | Web Application Framework for R

## Data privacy statement

Blood Cell basis App can use user-supplied data, but it does not store or shares them with any third party, and it deletes all data after being closed by the user. It will do so too if the server automatically closes the connection due to idle time (usually 5 minutes). This is the default behaviour of Shiny Apps hosted in ShinyApps.io (See [here](https://docs.rstudio.com/shinyapps.io/Storage.html)). Users can also check our [source code](https://github.com/GRealesM/IMDbasisApp).
In case of further privacy concerns, we refer the user to perform projections locally using our [cupcake package](https://github.com/ollyburren/cupcake), which applies the same method as the Blood Cell basis App.

## Citation

The Blood Cell basis App does not have an associated publication yet. However, like the [IMDbasisApp](https://grealesm.shinyapps.io/IMDbasisApp/), it relies on the method developed in the following publication:

- Burren OS *et al.* (2020) "Genetic feature engineering enables characterisation of shared risk factors in immune-mediated diseases" *Genome Med*. 12. 106. doi:[10.1186/s13073-020-00797-4](https://genomemedicine.biomedcentral.com/articles/10.1186/s13073-020-00797-4).


## About

This software has been developed by Guillermo Reales (gr440 [at] cam [dot] ac [dot] uk) within the  [**Wallace Group**](https://chr1swallace.github.io) and funded by the **Wellcome Trust**.
