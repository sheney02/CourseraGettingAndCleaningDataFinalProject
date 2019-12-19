---
title: "README"
author: "Nick Shenefield - Coursera"
date: "12/19/2019"
output: word_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Peer Graded Assignment for the Getting and Cleaning Data Coursera Course Project

This repository was created by Nicholas Shenefield and submitted to the Getting and Cleaning Data Course for coursera as my final course project. It has the directions on how to run an analysis on the Human Activity recognition dataset provided by the course facilitators.

## Dataset

Human Activity Recognition Using Smartphones: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files

CodeBook.md is a code book that describes the variables that were created and used, the data in the dataset, and any transformations that went into making the data into its final form. 

run_analysis.R performs the data prep that is followed by the steps needed and described by the course creators in order to created the optimal dataset.
  
FinalData.txt is the exported final data piece that went through all of the steps that are described above and in the CodeBook.md.
