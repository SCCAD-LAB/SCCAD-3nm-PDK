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

## Strengths:
SCCAD 3nm is a modern, research-focused PDK that captures key aspects of advanced-node design, including GAAFET devices, advanced BEOL features (e.g., buried power rails), and support for multiple PnR tools. It builds on standard compact modeling frameworks (BSIM-class models), IRDS-guided scaling, and prior academic PDKs such as ASAP7. While not silicon-calibrated, it is internally consistent and sufficiently complete to support end-to-end digital implementation and enable meaningful qualitative analysis.

Killer apps:
SCCAD 3nm is well-suited for DTCO research, CAD tool development, and architectural exploration at advanced nodes, particularly for studying the impact of emerging device structures, interconnect strategies, and power delivery schemes. It also serves as a useful platform for benchmarking PnR tools (Cadence, Synopsys, OpenROAD) in a “3nm-like” context and for exploring design ideas beyond the scope of older PDKs. When used alongside ASAP7, it enables stronger cross-node validation of observed trends.

Ways to customize the PDK:
SCCAD 3nm supports customization through its open, modular structure, with directly editable device models, interconnect definitions (tech LEF/RC), standard cell libraries, and PnR flows. Users can modify parameters, extend or redesign cells, and adjust implementation flows, then evaluate the impact using the provided end-to-end flow and sample designs. Although these updates are largely manual, the transparency enables flexible, full-stack experimentation.

Room for improvement:
Key limitations include the lack of silicon-calibrated device and interconnect models, a relatively small standard cell library, and simplified signoff infrastructure (DRC/LVS, variability, reliability, extraction). Limited co-optimization across devices, interconnect, and libraries can also lead to skewed PPA if not carefully managed. Enhancing model calibration, expanding libraries, and incorporating more realistic variation and manufacturing constraints would significantly improve accuracy, credibility, and usability.


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

<tr>
    <td>OpenROAD Compatibility</td>
    <td colspan="2" align="center">Yes</td>
    <td align="center">Not confirmed</td>
    <td align="center">Not confirmed</td>
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

## Contributors

This PDK was developed under the supervision of **Prof. Sung Kyu Lim**.

| Name | Contribution |
| --- | --- |
| **Junsik Yoon** | PDK Development |
| **Sandra Shaji** | PDK Development |
| **Sungwoo Jung** | GitHub page and documentation |
| **Zheng Yang** | OpenROAD setup and compatibility |
---

## Future Plans

We plan to support the following contents in the future:

1. Physical Design Flow Support for 3D IC
2. Backside Clock, Signal, and Power Routing 
3. Physical Design Support for 2.5D Heterogeneous Integration




---

## Contact

For questions or contributions, please contact the SCCAD Group: Sungwoo Jung (sw.jung@gatech.edu) and Yen-Hsiang Huang (yhhuang@gatech.edu).
