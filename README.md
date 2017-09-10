# samsung_data repository
# Using R to explore and prepare data for further analysis 

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

## What this repository contains

This repository contains :
* the tidy dataset merging train and set dataset for Samung data = my_tidy_data.txt
* the tidy dataset with the varaiables mean by subject and activity = avg_my_tidy_data.txt
* the R script used to build these datasets = run_analysis.R
* the codebook for the datasets

### run_analysis.R documentation

The script is documented, but here are the different steps to create the datasets.

* To create the first dataset I have to merge different tables : X_train.txt, X_subject.txt, y_train.txt, activity_labels.txt.

* I perform this by creating an index variable in each dataset and perform a merge on this index.

* I do the same operations for the train and test dataset and then using a rbind command append the test dataset to the train dataset.

* To compute the statistics, I first have to select the required variables for mean and std using a subset function with grepl on mean()|std().

* Then I select the required variables and I use an aggregate function to compute the mean of all the variables.
