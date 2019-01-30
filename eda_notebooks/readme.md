# Exploratory Data Analysis

*Authors: Chris Barton, 	Sohaj Shergill, Joey Berkowitz*

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

All descriptive statistics were analyzed with a 2% random sample from the full population dataset. We compared mean and standard deviation of the population with the mean and standard deviation of the sample to ensure that the sample was representative. 

Overall, most features are not normally distributed which can be observed in both the histograms and the summary below.  Since we are largely looking to use Logistic Regression, Decision Trees and SVM for modeling and none of these models have a normality assumption, we decided against normalizing the dataset using log or power transformations.  In case we do end up using linear models during the modeling phase, we will revisit this topic and make appropriate transformations.  

Measure | f0 |	f1 | f2 |	f3 | f4 |	f5 | f6 |	f7 | f8 |	f9 | f10 |	f11
-- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | --- | ---
count | 506906	| 506906 |	506906 |	506906	| 506906 |	506906 |	506906	| 506906 |	506906 |	506906 |	506906 |	506906
mean |	0.6199 | 3.2656 |	8.5069 | 3.6564 | 3.5226 | 10.2014 | 1.7593 |	-0.2926 |	-2.0457 |	10.6696 |	-2.0923 |	4.1591
std |	1.5349 | 0.0227 |	0.3592 | 0.2417 |	0.1094 | 0.2318 |	1.6708 | 0.6626 | 5.4641 | 2.2926 |	1.3831 |	0.0170
min |	-1.9462 |	3.2636 | 8.2724 |	1.5866 | 3.5067 |	10.1612 |	-8.0021 |	-4.7248 | -32.3752 | 9.8500 |	-13.0379 | 4.1576
25% | -1.0044 |	3.2636 | 8.2724 | 3.7358 | 3.5067 | 10.1612 |	0.9451 | -0.1666 | -2.7160 |	9.8500 | -1.8609 | 4.1576
50% |	1.6339 | 3.2636 |	8.2724 | 3.7358 |	3.5067 | 10.1612 | 2.3860 |	-0.1666 |	1.1075 | 9.8500 |	-1.8609 |	4.1576
75% |	1.9919 | 3.2636 |	8.7566 | 3.7358 |	3.5067 | 10.1612 | 2.9817 |	-0.1666 |	1.1075 | 9.8500 |	-1.8609 |	4.1576
max |	1.9919 | 4.2807 |	9.3370 | 3.7358 |	7.2591 | 17.1289 | 2.9817 |	-0.1666 |	1.1075 | 28.3497 | -1.8609 | 4.9994

### Feature Distributions

Median and Mean is fairly seperated for F0, F2, F6, F7, F8, F9, F10 and F11 features.  Histograms and Box plot seem to reflect this and reaffirm the lack of normality in the dataset.  

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/boxplot.png)

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/histograms_ss.png)

### Correlation Plot

#### Features

When looking at correlation amongst the features, we observe 4 relationships with strong positive correlation and 3 relationships with strong negative correlation.  These features are further examined in the scatterplots below with an overlay of one of our target variables - conversion.  

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/features_correlation_ss.png)

#### All Variables

When looking at correlation amongst all variables including our two target variables (Visits and Conversion), we don't really see a strong correlation of any one feature in relation to our target variables.    

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/all_correlation_ss.png)

### Scatter Plots

We wanted to examine the relationship between some of the most correlated features from our correlation plot, along with the target variable - conversion.

#### Positive Correlations

The following four relationships highlight a strong positive correlation.  

F1 and F5 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/pos_f1_f5_scatterplot_ss.png)

F6 and F0 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/pos_f3_f6_scatterplot_ss.png)

F6 and F3 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/pos_f06_f03_scatterplot_ss.png)

F11 and F4 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/pos_f11_f04_scatterplot_ss.png)

#### Negative Correlations

The following three relationships highlight a strong positive correlation.  

F7 and F5 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/neg_f07_f05_scatterplot_ss.png)

F08 and F09 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/neg_f08_f09_scatterplot_ss.png)

F10 and F4 w/Conversion

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/neg_f10_f04_scattterplot_ss.png)

### Target Variables (Visit and Conversion)

We also wanted to check for the class distribution for conversion and visit target features:

Conversion | Count                     
---------- | ----------              
0 | 25,251,421                        
1 | 58,061                           

Visit | Count 
----- | ------
0 | 24,263,654 
1 | 1,045,828 

Both the conversion and visit target variables are imbalanced, with many more observations within the negative class. This will be an important consideration for us when building our model and sampling for further analysis.

We also wanted to look at some cross-tab tables to see how these target variables interacted with the exposure variable:

Exposure | Visit | Count 
-------- | ----- | ------
0 | 0 | 23,662,995 
0 | 1 | 762,190
1 | 0 | 600,659
1 | 1 | 283,638

Exposure | Conversion | Count 
-------- | ---------- | ------
0 | 0 | 24,398,777 
0 | 1 | 26,408
1 | 0 | 852,644
1 | 1 | 31,653


After reviewing these crosstabs, it appears that the relationship between exposures and conversions is stronger than that of exposures to visits. We look forward to providing follow up and some analysis around the causality of these inferences when we continue modeling the data.

## Data Quality (Sanity Checks) 

1. Confirm if user is not in treatment, they did not recieve an ad exposure. This can be confirmed with a simple SQL query can can be found in EDA_cb.ipynb 

```
SELECT COUNT(*) as treatment_and_exposure
FROM `uplift.data`
WHERE treatment = 0 AND exposure = 1

-- This results in zero ad exposures for control subjects!
```

2. Features should be independent of treatment / control group. If not, there was a problem with the randomization strategy. This can be confirmed with a Classifier 2 Sample Test. This test states that a classifier trained to predict the treatment variable should do no better than chance level. 

- To accomplish this, we first build a classifier on a random sample of the 25 million observations, then record the loss of this trained model. Secondly, randomly assign a treatment variable to each observation in the dataset, train a classifier and record the loss. We then repeat the second step 500 times provided a distribution for our null hypothesis and perform a one sample T-test. Below, we can see the results. 

```
    Loss of classifier trained on treatment variable of full dataset: 0.15472727272727274
    Average loss of classifers trained on random treatment variable: 0.1546344111776447
    P-value = 0.227
    
    We fail to reject the null hypothesis. 
```

![graphic](https://github.com/cloud36/uplift_modeling_criteo/blob/master/img/2ClassiferTest.png)

More information about Classifer to Sample Test (C2ST) can be found in references.[2] 

3. Make sure collected attributes possess predictive power. As Criteo mentions, this is a concern as the logged features were easy to collect and anonymized. To accomplish this, we train four classifers:

    - A baseline random classifier.
    - A classifer trained on treatment.
    - A classifer trained on control.
    - A classifer trained on the whole dataset. 
    
- We then compare the the log-loss improvement of over the baseline. 
```
Hamming Loss on Various Classifiers
Loss of whole dataset: 0.08174242424242424
Loss of treatment: 0.0743221462086751
Loss of control: 0.2627177014661025
Loss of baseline: 0.4721

Log-loss Improvement over baseline
Log-Loss impovement of whole dataset: 233.639854451623
Log-Loss impovement of treatment: 246.31886735365222
Log-Loss impovement of control: 78.08932986327547
Log-Loss impovement of baseline: -0.0
```

- Above, we can see a substantial improvement over a baseline classifier leading us to the conclusion that the features present do hold predictive power for the target variable (conversions). 

## Data Preprocessing 

In regards to data preprocessing, most of this was undertaken by Criteo. Therefore most of the tasks during this project will focus on model development and analysis. 

## Notebooks
- [EDA Notebook 1](https://github.com/cloud36/uplift_modeling_criteo/blob/master/eda_notebooks/CSC672_EDA_JB.ipynb)
- [Data Quality](https://github.com/cloud36/uplift_modeling_criteo/blob/master/eda_notebooks/EDA_cb.ipynb)
- [EDA Notebook 2](https://github.com/cloud36/uplift_modeling_criteo/blob/master/eda_notebooks/EDA_Sohaj.ipynb)


## Next Steps 

1. Review Survey Papers presented in home readme.md
2. Begin Modeling.
    - Two-Model Approach
    - Class Transformation Method
    
## Presentations

1. [Overview & Feature Analysis](https://www.youtube.com/watch?v=Bfby7hleOq0&feature=youtu.be)
2. [Data Quality & Next Steps](https://www.youtube.com/watch?v=RHJmwlGbq5I)

## References

[1] Eustache Diemert, Artem Betlei, Christophe Renaudin, and Massih-Reza
Amini. 2018. A Large Scale Benchmark for Uplift Modeling. In Proceedings
of AdKDD & TargetAd (ADKDD’18). ACM, New York, NY, USA, 6 pages.
https://doi.org/10.1145/nnnnnnn.nnnnnnn

[2] David Lopez-Paz, Robert Nishihara, Soumith Chintala, Bernhard Schölkopf, and
Léon Bottou. Discovering Causal Signals in Images
