# Sample Designs and PPA Evaluation

This repository contains sample designs and corresponding Power, Performance, and Area (PPA) results for the USC-3N-2D PDK, generated using our OpenROAD flows. The designs use front-side BEOL configurations, and the standard cells do not incorporate buried power rails (BPR).


| Benchmark           | ECG                | ECG                | OpenPiton          | OpenPiton          |
|---------------------|--------------------|--------------------|--------------------|--------------------|
| PDK Version         | Frontside-Version  | Backside-Version   | Frontside-Version  | Backside-Version   |
| Target Freq. (GHz)  | 10                 | 10                 | 1                  | 1                  |
| Footprint (um x um) | 57 x 57            | 57 x 57            | 300 x 362          | 300 x 362          |
| Cell count          | 71,116             | 73,687             | 313,547            | 332,002            |
| Tot WL (m)          | 0.12               | 0.11               | 1.48               | 1.48               |
| Tot P (mW)          | 135                | 121                | 85.4               | 80.4               |
| WNS (ps)            | -37                | -48                | -11                | -29                |
| Effective Freq. (GHz)| 7.3               | 6.7                | 0.99               | 0.97               |
