# cgaim

Constrained groupwise additive index models

## Description

The `cgaim` package provide allows fitting groupwise additive index models with constraints on both the ridge functions and indices coefficients. Methods to plot the ridge functions, predict new data and compute confidence intervals are also included in the package.

## Installation

1. In R, install the package directly from github using the command (the package `devtools` is required):
```r
> library(devtools)
> install_github("PierreMasselot/cgaim")
```
2. The package can then be loaded as usual: `library(cgaim)`.
3. Help can be accessed from R with `?cgaim`.

## Functions

The main function of the package is the eponymous `cgaim` that fits the model. Then, the `print.cgaim` method allows displaying the results. The `confint.cgaim` method allows computing confidence intervals, either using normal approximation or through bootstrap. Ridge functions can be displayed using the `plot.cgaim` method, with the possibility to add confidence intervals. Finally, `predict.cgaim` allows computing the indices and perform prediction on new observations.
See the help of each function.