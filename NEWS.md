## 0.2.0

### New features
- Custom function `s` for non-index smooth terms. Maps to the right function depending on the function used at the GAM step.
- Possibility to use package `cgam` for constrained smooths.

### Changes
- Change of argument names in `g`.
- Warning messages for convergence failures.

### Bug fixes
- Fixes a bug related to argument `select` in `plot.cgaim`
- Fixes a bug related to the computation of covariance matrices after estimation
- Fixes bug occuring for single-index models without covariate

## 0.1.1

### Function 'g'
- argument 'label' now defaults to the name of the first variable given
- now takes list of matrices to facilitate calling the function
- smarter attribution of names inside each index

### Bug fixes
- fixes the mixing of names in elements 'gfit' and 'beta' from the output