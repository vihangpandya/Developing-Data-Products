Visualization of Random Numbers with Normal Distribution
========================================================
author: Vihang Pandya
date: 06/25/2016

Overview
========================================================
A picture is worth a thousand words. Hence, use shiny to 
create an easy way to visualize the random numbers 
generated with normal distribution.

Functional Descritpion
========================================================
Allow user to specify number of randomly generated 
observations along with the desired mean and standard
deviation.

User sets the inputs and clicks on the Submit button
to generate numbers.

Application Output
========================================================
The output is shown on the 3 tabs on the right:
 - Plot tab shows a histogram of the random numbers
 - Summary tab shows provides staistical information
 - Table tab show provides actual values of the numbers
 
Example (1000 Random Numbers, mean = 0 and sd = 1)
========================================================
Histogram of Randomly Generated Numbers

```r
hist(rnorm(1000, 0, 1), main="Distribution of 1000 Random Numbers",
     xlab = "Random Numbers", col = "blue1")
```

![plot of chunk unnamed-chunk-1](visualnrn-figure/unnamed-chunk-1-1.png)
