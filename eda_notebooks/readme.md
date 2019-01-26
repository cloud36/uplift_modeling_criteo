# Exploratory Data Analysis

## Dataset Overview 

The dataset (CRITEO-UPLIFT1) that will be used throughout this project was provided by Criteo and is the largest publicly available dataset specifically built and distributed for the purpose of studying uplift modeling. 

Criteo is a leading company in the world of AdTech and eCommerce with a focus on Dynamic Ads, Retargeting, Customer Acquisition, and Audience matching. In 2017 they served over 1200 Billion ads through their platform.  With this type of size and reach, Criteo has access to and open sources a number of datasets related to computational advertising. Furthermore, their [AI lab](http://ailab.criteo.com/) is consistently publishing and pushing the field of computational advertising. The analyzed dataset was open sourced from their lab and is analyzed below. 

First, in order to determine causal effects in the world of online advertising incrementality tests must be performed. An incrementality test is where a portion of the population is withheld from targeting. After the exposure period is over, the resulting dataset can be analyzed to determine and Average Treatment Effect or ATE. This dataset can also be used to model the Individual Treatment Effect or ITE. The dataset used in this study was constructed by assembling a number of these incrementality tests.

Below, we will perform an exploratory analysis of the dataset. 

## Dataset Size and Attributes
- 25 Million Rows
- 5.6 GB
- 12 Features
  - Features are unknown for privacy reasons. Additionally, the are projected as to keep predictive power, while making it extremely difficult to deduce what they originally were.
- 2 binary labels
  - Visits
  - Conversions
- Global Treatment Ratio: 84.6%

## Attribute Analysis

Due to privacy concerns, Criteo took the step of projecting the features onto a seperate vector space. Additionally, they do not provide any labels for the features (except generic F0, F1, F2, etc). For this reason, it is impossible to know what these features represent. However, these features still possess predictive power (as we can see in sanity check three below). Furthermore, we can still inspect these attributes via descriptive statistics as shown below. 

### Descriptive Statistics

### F0

### F1

### F2

### F3

### F4 

### F5

### F6

### F7

### F8

### F9

### F10

### F11


## Data Quality (Sanity Checks) 

1. Confirm if user is not in treatment, they did not recieve an ad exposure. This can be confirmed with a simple SQL query can can be found in EDA_cb.ipynb 

```
SELECT COUNT(*) as treatment_and_exposure
FROM `uplift.data`
WHERE treatment = 0 AND exposure = 1

-- This results in zero ad exposures for treatment subjects!
```

2. Features should be independent of treatment / control group. If not, there was a problem with the randomization strategy. This can be confirmed with a Classifier 2 Sample Test. This test states that a classifier trained to predict the treatment variable should do no better than chance level. To accomplish this, we first build a classifier on a random sample of the 25 million observations, then record the loss of this trained model. Secondly, randomly assign a treatment variable to each observation in the dataset, train a classifier and record the loss. We then repeat the second step 500 times provided a distribution for our null hypothesis and perform a one sample T-test. Below, we can see the results. 





3. Make sure collected attributes possess predictive power. As Criteo mentions, this is a concern as the logged features were easy to collect and anonymized. 

## Similarity and Distance


## Data Preprocessing 

In regards to data preprocessing, most of this was undertaken by Criteo. Therefore most of the tasks during this project will focus on model development and analysis. 

## Notebooks
- link 1
- link 2
- link 3
- link 4

## Next Steps 

1. 

## References

Eustache Diemert, Artem Betlei, Christophe Renaudin, and Massih-Reza
Amini. 2018. A Large Scale Benchmark for Uplift Modeling. In Proceedings
of AdKDD & TargetAd (ADKDD’18). ACM, New York, NY, USA, 6 pages.
https://doi.org/10.1145/nnnnnnn.nnnnnnn
