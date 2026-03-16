# SCCAD-3nm-PDK

**SCCAD-3nm-PDK** is an open-source **3 nm Process Design Kit (PDK)** developed by the **SCCAD Group** at the University of Southern California (USC).  
This PDK is intended for academic research and educational use, enabling exploration of advanced-node physical design, device–interconnect interactions, and design-technology co-optimization (DTCO).

---

Please select the PDK for your EDA tool.


| **Synopsys Users** | **Cadence Users** |
|:---:|:---:|
| <a href="./synopsys"><img src="https://img.shields.io/badge/Synopsys-PDK-purple?style=for-the-badge&logo=synopsys" height="50"></a> | <a href="./cadence"><img src="https://img.shields.io/badge/Cadence-PDK-red?style=for-the-badge&logo=cadence" height="50"></a> |
| [📂 Go to Synopsys Files](./synopsys) | [📂 Go to Cadence Files](./cadence) |






---

## Comparison with Other Academic 3nm PDKs

The following table highlights key architectural and research-oriented differences between SCCAD-3nm and other publicly available academic 3nm PDKs.

| Feature | FreePDK3 (NCSU) | GT3 (Gatech) | **SCCAD-3nm** |
|----------|----------------|------|----------------|
| **Tech Node** | 3nm | 3nm | 3nm |
| **Device Type** | GAAFET | GAAFET | GAAFET |
| **Cell Heights** | 5.5T | 6T | **6T, 5T** |
| **Power Rail (PR)** | Front-side PR (FSPR) | Buried PR (BPR) | **FSPR, BPR** |
| **Support Back-side Metal** | No | No | **Yes** |
| **Provide Files for PDK Development** | No | No | **Yes** |

### Key Advantages of SCCAD-3nm

- Supports **multiple cell-height architectures (6T and 5T)**
- Enables exploration of **Front-side and Buried Power Rail (FSPR / BPR)**
- Provides **Back-side Metal support** for advanced power-delivery studies
- Includes collateral for **PDK development and methodology research**

---



## Contents

The repository includes the following major components:

- **Standard Cells**
  - Logic gates, buffers, multiplexers, and sequential elements
  - Multiple drive strengths and threshold-voltage flavors
- **Technology Files**
  - Technology LEF and routing constraints
  - Interconnect technology descriptions for RC extraction
- **Timing Libraries**
  - Liberty (`.lib`) files including timing and power information of 57 standard cells
- **Verification**
  - Design Rule Check (DRC) runsets
  - Layout-versus-Schematic (LVS) collateral
- **Extraction**
  - RC models compatible with signoff-grade extraction tools

---

## Supported Design Flow

The SCCAD-3nm PDK is compatible with a standard digital implementation flow, including:

1. Logic synthesis
2. Placement and routing
3. Parasitic extraction
4. Static timing analysis
5. Physical verification (DRC/LVS)

The PDK is primarily oriented toward **research and prototyping**, rather than manufacturing signoff.

---

## Contact

For questions or contributions, please contact the SCCAD Group at USC.
