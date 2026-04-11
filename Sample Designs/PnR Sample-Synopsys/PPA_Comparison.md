# SCCAD-3nm-PDK: Sample Designs and PPA Analysis

This repository contains sample designs and evaluation results for the **SCCAD 3nm Process Design Kit (PDK)**. 

##  PPA Comparison: Frontside vs. Backside-Version
The following table summarizes the Power, Performance, and Area (PPA) results for two distinct designs (ECG and OpenPiton).

| Benchmark | ECG | ECG | OpenPiton | OpenPiton |
|---|---|---|---|---|
| PDK Version | Frontside-Version | Backside-Version | Frontside-Version | Backside-Version |
| Target Freq. (GHz) | 6 | 6 | 1 | 1 |
| Footprint (um x um) | 57 x 57 | 53 x 53 | 361 x 361 | 357 x 357 |
| Cell area (um2) | 2074 | 1757 | 13444 | 11898 |
| Tot WL (m) | 0.11 | 0.10 | 1.26 | 1.26 |
| Tot P (mW) | 75.0 | 66.3 | 82.4 | 77.3 |
| WNS (ps) | -3.56 | -5.35 | -2.30 | -57.21 |
| Effective Freq. (GHz) | 5.87 | 5.81 | 1.00 | 0.94 |
