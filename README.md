# Point Process Simulation and Analysis in R

This repository contains exercises and code for simulating and analyzing point processes using R. The tasks are focused on uniform point distributions, Poisson point processes, and modeling point patterns with spatial analysis tools, primarily using the `spatstat` library.


## 1. Generating Point Patterns
We generate random spatial point patterns within defined geometric boundaries:
- **Uniform Points in a Rectangle:** Generate a set of points uniformly distributed in a rectangular region using the `runif()` function.
- **Uniform Points in a Circle:** Use random radius values and angles to generate uniformly distributed points within a circular region.

---

## 2. Visualizing and Testing Spatial Patterns
Visualization is crucial for analyzing point processes:
- **Aspect Ratio and Scaling:** Ensure equal scaling for X and Y axes to maintain spatial accuracy.
- **Quadrat Testing:** Perform spatial randomness tests using `quadrat.test()` to evaluate uniformity in the spatial distribution of points.

---

## 3. Poisson Point Processes
The homogeneous Poisson point process is a foundational spatial process model characterized by complete spatial randomness (CSR):
- **Simulation:** Use the `rpoispp()` function to simulate Poisson point processes within defined windows.
- **Analysis:** Analyze the spatial distribution and assess the number of points generated based on intensity parameters.

---

## 4. Intensity Estimation
Estimate the intensity of point patterns to understand spatial density:
- **Grid-Based Counting:** Divide the spatial area into smaller regions and count the number of points in each.
- **Kernel Density Estimation:** Apply the `density()` function to visualize point pattern intensity as a continuous surface.

---

## 5. Modeling Point Processes
Fit models to point patterns and explore their spatial distribution:
- **Poisson Point Process Models:** Use the `ppm()` function to fit homogeneous Poisson models.
- **Trend Analysis:** Incorporate spatial covariates and fit models with log-linear intensity functions.

---

## 6. Analyzing Spatial Relationships
Study spatial relationships between points and features:
- **Nearest Neighbor and Pairwise Distances:** Calculate distances between points and analyze spatial clustering.
- **Distance Maps:** Generate distance functions using `distmap()` to explore relationships between points and linear features.
- **Relative Distribution Analysis:** Examine point density in relation to external spatial features (e.g., faults or geological layers).

---

## 7. Modeling Inhomogeneous Point Processes**
- Load the `lansing` dataset and explore species-specific point patterns for different tree types.
- Analyze the point intensity for black oak and maple using `density()`.
- Fit a Poisson point process model using `ppm()` to estimate constant intensity over the study area.
- Fit a spatial trend model assuming log-linear intensity with `~x + y`, visualize the fitted trend, and display model residuals.

---

## 8. Simulation of Point Processes with Varying Intensity**
- Generate a random point process using the estimated model parameters.
- Compute the point intensity function and visualize the resulting pattern.
