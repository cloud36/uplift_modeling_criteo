# Project: Uplift Modeling via Criteo

In this repository we explorie uplift modeling via data open sourced by [Crieto](http://ailab.criteo.com/criteo-uplift-prediction-dataset/). 

# Uplift Modeling Overview

As the digital landscape grow, so does the amount of money companies are spending in digital marketing. With that, new technologies and methods are consistently being developed to advertise more efficiently. Often companies will use propensity models to target customers likely of buying, however this “propensity modeling” is often asking the wrong question in that traditional propensity models aims to model the probability of a purchase i.e. P(Y | X) ~ the probability of a purchase given a representation of the customer X. These models will generate a score for each customer than a marketer might sort this in descending order and target the top 20%. This however fails to take into account the number of customers who would have bought without being shown an advertisement. 

One study from US Bank “found that a ‘response’ (propensity) model was spectacularly unsuccessful for targeting a (physical) mailshot promoting a high-value product to its existing customers. When the whole base was targeted, this was profitable (on the basis of the value of incremental sales measured against a control group), but when the top 30% identified by a conventional ‘response’ model was targeted, the result was almost exactly zero incremental sales (and a resulting negative ROI). This was because the ‘response’ model succeeded only in targeting people who would have bought anyway. An uplift model managed to identify a different 30% which, when targeted, generated 90% of the incremental sales achieved when targeting the whole population, and correspondingly turned a severely lossmaking marketing activity into a highly successful (and profitable) one (Grundhoefer, 2009).11” [2]

This is where Uplift Models come in! Also, I feel it is important to mention that these are not new models and have gone by other names in the past such as: Incremental Value Modelling, Differential Response Modelling, True Lift Modelling, Net Lift Modeling.

The goal of Uplift Modeling is to model the incremental lift an advertisement (or action) has on a customer. For example, in the propensity model above, an uplift model would aim to discover the difference between the likelihood hood a customer would buy prior to being shown and ad verus after being shown an ad. Defined more formally as 

P(Y | x, a1) - P(Y | x, a0); where Y is the target variable, X is a representation of the customer, and A is the action taken. 

# Techniques

# Data

# Resources

https://docs.wixstatic.com/ugd/b6ac34_c8b6d5eec3c04fe2ba2439b89c71f4b3.pdf

http://proceedings.mlr.press/v67/gutierrez17a/gutierrez17a.pdf

http://www.cs.put.poznan.pl/sigml/wp-content/uploads/2013/11/Uplift_Modeling_web.pdf

http://stochasticsolutions.com/pdf/sig-based-up-trees.pdf

# References 

[1] Eustache Diemert, Artem Betlei, Christophe Renaudin, and Massih-Reza Amini. 2018. A Large Scale Benchmark for Uplift Modeling. In Proceedings of AdKDD & TargetAd (ADKDD’18). ACM, New York, NY, USA, 6 pages. https://doi.org/10.1145/nnnnnnn.nnnnnnn

[2] Nicholas J. Radcliffe, Patrick D. Surryc. Real-World Uplift Modelling with Significance-Based Uplift Trees
