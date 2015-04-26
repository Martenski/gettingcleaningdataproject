---
title: "README"
author: "Marten Witkamp"
date: "Sunday, April 26, 2015"
output: html_document
---

## Relevant files
Apart from this README.md, the following files are relevant for this repo:
* the source data (see link below), unzipped and placed in your working directory.
* the run_analysis.R script in this repo, which transforms this source data to a tidy dataframe and exports it to a txt file in the working directory. 
* the CodeBook.md codebook, which describes the variables that can be found in the resulting file of run_analysis.R. 

## About the source data
Quoted from the project description: "One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone."

Quoted from the source data Readme.txt: "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

## Origin of the source data
The used dataset was provided by:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

It can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## About the script
The purpose of the script is twofold:
* creating a tidy dataset from the source data.
* selecting a limited number of variables from this tidy data and carry out a series of preparatory calculations on them, ultimately exporting the results of these calculations to a txt file for others to (re)use.

## How to run the script
For correctly executing this script, the following is necessary:
* downloading and unzipping the source files.
* changing your working directory to the location of the source files (ending in ...dataset/) - or copying the files to your current working directory.
* if you had not done so already, install the packages Tidyr and Dplyr.

## Troubleshooting
This script was written and tested on a Windows machine. If you are encountering errors and you are not on Windows, please replace any forward slashes to backslashes in the places in the run_analysis.R script where directories are referenced. This should fix the problem. 