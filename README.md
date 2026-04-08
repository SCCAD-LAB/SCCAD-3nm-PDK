# SCCAD-3nm-PDK

SCCAD-3nm-PDK is an open-source 3nm Process Design Kit (PDK) developed by the Southern California
Computer-Aided Design (SCCAD) Group at the University of Southern California (USC). This PDK is intended for academic research and educational use, enabling exploration of advanced-node physical design, device–interconnect interactions, and design-technology co-optimization (DTCO).

Our PDK works with the following EDA tools:


| **Synopsys Users** | **Cadence Users** | **OpenROAD Users** |
|:---:|:---:|:---:|
| <a href="./PDK-Synopsys"><img src="https://img.shields.io/badge/Synopsys-PDK-purple?style=for-the-badge&logo=synopsys" height="50"></a> | <a href="./PDK-Cadence"><img src="https://img.shields.io/badge/Cadence-PDK-red?style=for-the-badge&logo=cadence" height="50"></a> | <a href="./PDK-OpenROAD"><img src="https://img.shields.io/badge/OpenROAD-PDK-green?style=for-the-badge" height="50"></a> |
<!--
| [📂 Go to Synopsys Files](./PDK-Synopsys) | [📂 Go to Cadence Files](./PDK-Cadence) |
-->




---

## Comparison with Other Academic 3nm PDKs

The following table summarizes the key feature differences between SCCAD-3nm and other publicly available academic 3nm PDKs.


<table border="1" cellspacing="0" cellpadding="6">
  <tr>
    <th>Feature</th>
    <th colspan="2">SCCAD-3nm (USC)</th>
    <th align="center">Academic PDK A</th>
    <th align="center">Academic PDK B</th>
  </tr>

  <tr>
    <td>Tech Node</td>
    <td colspan="2" align="center">3nm</td>
    <td align="center">3nm</td>
    <td align="center">3nm</td>
  </tr>

  <tr>
    <td>Device Type</td>
    <td colspan="2" align="center">GAAFET</td>
    <td align="center">GAAFET</td>
    <td align="center">GAAFET</td>
  </tr>

  <tr>
    <td>Power Rail</td>
    <td align="center">Front-side</td>
    <td align="center">Buried</td>
    <td align="center">Front-side</td>
    <td align="center">Buried</td>
  </tr>

  <tr>
    <td>BEOL</td>
    <td align="center">Front only</td>
    <td align="center">Front and back</td>
    <td align="center">Front only</td>
    <td align="center">Front only</td>
  </tr>

  <tr>
    <td>Cell Heights</td>
    <td align="center">6-Track</td>
    <td align="center">5-Track</td>
    <td align="center">5.5-Track</td>
    <td align="center">6-Track</td>
  </tr>

  <tr>
    <td>Support for PDK Modification</td>
    <td colspan="2" align="center">Yes (using commercial tools)</td>
    <td align="center">No</td>
    <td align="center">No</td>
  </tr>
</table>

### Key Advantages of SCCAD-3nm

- Flexible power delivery options – Supports both front-side and buried power rails for studying advanced power distribution schemes.
- Dual-side BEOL support – Enables exploration of backside routing and advanced interconnect architectures.
- Modifiable PDK – Enables researchers to customize technology parameters and explore new design methodologies.

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

## Future Plans

We plan to support the following contents in the future :

1. Physical Design Support for 3D IC
2. PDK Support for 3D IC
3. Back-side Clock/Signal/Power Routing 
4. Physical Design Support for 2.5D IC with Heterogeneous Chiplets




---

## Contact

For questions or contributions, please contact the SCCAD Group at USC: Sungwoo Jung (sw.jung@gatech.edu).
