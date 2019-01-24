# Exploratory Data Analysis

## Dataset

The dataset (CRITEO-UPLIFT1) that will be used throughout this project was provided by Criteo and is the largest publicly available dataset specifically built and distributed for the purpose of studying uplift modeling. 

Criteo is a leading company in the world of AdTech and eCommerce with a focus on Dynamic Ads, Retargeting, Customer Acquisition, and Audience matching. In 2017 they served over 1200 Billion ads through their platform.  With this type of size and reach, Criteo has access to and open sources a number of datasets related to computational advertising. Furthermore, their AI lab is consistently publishing and pushing the field of computational advertising. The analyzed dataset was open sourced from their lab and is describe and analyzed below. 

http://ailab.criteo.com/

First, in order to determine causal effects in the world of online advertising incrementality test must be performed. An incrementality test is where a sort portion of the population is withheld from be targeted via an online ad. After the exposure period is over, the resulting dataset can be analyzed to determine and Average Treatment Effect or ATE. This dataset can also be used to model the Individual Treatment Effect or ITE. The dataset used in this study was constructed by assembling a number of these incrementality tests.

Below, we will perform and initial exploratory analysis of the dataset. 

## Dataset Size and Attributes
- 25 Million Rows
- 5.6 GB
- 12 Features
  - Features are unknown for privacy reasons. Additionally, the are projected as to keep predictive power, while making it extremely difficult to deduce what they originally were.
- 2 binary labels
  - Visits
  - Conversions
- Global Treatment Ratio: 84.6%

## Attributes

## Testing (Sanity Checks) 

1. Confirm if user is not in treatment, they did not recieve an ad exposure. This can be confirmed with a simple SQL query can can be found in EDA_cb.ipynb 

```
SELECT COUNT(*) as treatment_and_exposure
FROM `uplift.data`
WHERE treatment = 0 AND exposure = 1
```

2. Features should be independent of treatment / control group. If not, there was a problem with the randomization strategy. This can be confirmed with a Classifier 2 Sample Test (more about this test here)

INSERT GRAPH and p-values

## Notebooks
- link 1
- link 2
- link 3
- link 4

## Next Steps 

## References

Eustache Diemert, Artem Betlei, Christophe Renaudin, and Massih-Reza
Amini. 2018. A Large Scale Benchmark for Uplift Modeling. In Proceedings
of AdKDD & TargetAd (ADKDD’18). ACM, New York, NY, USA, 6 pages.
https://doi.org/10.1145/nnnnnnn.nnnnnnn
