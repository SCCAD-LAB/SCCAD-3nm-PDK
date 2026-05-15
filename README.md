# USC-3N-2D (3nm PDK for 2D ICs)
USC-3N-2D is an open-source 3nm Process Design Kit (PDK) for 2D ICs developed by the <a href="https://sites.usc.edu/sccad"> Southern California Computer-Aided Design (SCCAD) Lab</a> at the University of Southern California (USC). This PDK is intended for academic research and educational use, and enables exploration of advanced-node physical design, device–interconnect interactions, and design-technology co-optimization (DTCO). Our key features include:
- Customizable PDK – Enables researchers to <a href="https://github.com/SCCAD-LAB/USC-3N-2D/tree/main/PDK%20Development">modify PDK contents</a> including device, interconnect, cells, and place/route flow and explore new design methodologies.

- Dual-side BEOL support – Enables backside routing for power, clock, and signals, supporting advanced interconnect architectures. Our standard cells configured for backside power delivery networks (BS-PDN) integrate buried power rails (BPR) to improve routing efficiency and power integrity.

- Broad tool compatibility – Compatible with <a href="https://github.com/SCCAD-LAB/USC-3N-2D/tree/main/PnR-OpenROAD">OpenROAD</a>, <a href="https://github.com/SCCAD-LAB/USC-3N-2D/tree/main/PnR-Cadence">Cadence</a>, and <a href="https://github.com/SCCAD-LAB/USC-3N-2D/tree/main/PnR-Synopsys">Synopsys</a> physical design flows.

<p align="center">
  <img src="images/openpiton-place.png" width="300" />
  <img src="images/openpiton-route.png" width="300" />
</p>


## Methodology
Our device model is developed from physics-based TCAD simulations of nanosheet FETs, calibrated to IMEC’s 3 nm reference data, and translated into a BSIM-CMG compact model through curve fitting for circuit-level applications. The interconnect model is constructed by scaling the ASAP7 PDK according to IRDS projections, assigning resistance and capacitance values from the literature, and generating RC parasitics using extraction tools such as StarRC.

Our DRC rule deck is derived from the GT3 PDK, extended with constraints from published 3 nm GAAFET and BPR research, and implemented as Synopsys IC Validator runsets for academic DTCO use. Similarly, the PEX rule deck is a predictive extraction technology built from ITF/ICT interconnect definitions using StarRC and Quantus/QRC, based on ASAP7-style BEOL scaling and extended to support 3 nm GAAFET, BPR, and backside PDN structures. This overall methodology follows the approach described in our <a href="https://sites.usc.edu/sccad/islped23-sandra">reference paper</a>.

## Use Cases
USC-3N-2D 3nm is well suited for DTCO research, CAD tool development, and architectural exploration at advanced technology nodes, particularly for analyzing the impact of emerging device architectures, interconnect schemes, and power delivery strategies. It provides a practical platform for benchmarking PnR tools (Cadence, Synopsys, OpenROAD) in a “3 nm–like” environment and for exploring design concepts beyond the limits of legacy PDKs. When used alongside ASAP7, it enables more robust cross-node validation of observed trends.

The USC-3N-2D kit is internally consistent and sufficiently complete to support end-to-end digital implementation, enabling meaningful qualitative analysis.

## Ways to Customize the PDK
USC-3N-2D supports customization through its open, modular structure, with directly editable device models, interconnect definitions (tech LEF/RC), standard cell libraries, and PnR flows. Users can modify parameters, extend or redesign cells, and adjust implementation flows, then evaluate the impact using the provided end-to-end flow and sample designs. Although these updates are largely manual, the transparency enables flexible, full-stack experimentation.

## Room for Improvement
Current limitations include the lack of silicon-calibrated device and interconnect models, a relatively small standard cell library, and simplified signoff infrastructure (DRC/LVS, variability, reliability, extraction). Limited co-optimization across devices, interconnect, and libraries can also lead to skewed PPA if not carefully managed. Enhancing model calibration, expanding libraries, and incorporating more realistic variation and manufacturing constraints would significantly improve accuracy, credibility, and usability. 
(*We welcome your contributions in helping us address and overcome these limitations.*)

## Publication
- PDK development: <a href="https://sites.usc.edu/sccad/islped23-sandra">Sandra Shaji, et al, “A Comparative Study on Front-Side, Buried and Back-Side Power Rail topologies in 3nm Technology Node”, ACM/IEEE International Symposium on Low Power Electronics and Design, 2023.</a>
- Backside power routing using the PDK: <a href="https://sites.usc.edu/sccad/files/2026/05/vlsi24-1.pdf">Pruek Vanna-iampikul, et al, “Back-side Design Methodology for Power Delivery Network and Clock Routing”, IEEE Symposium on VLSI Technology & Circuits, 2024.</a>
- Backside clock routing using the PDK: <a href="https://sites.usc.edu/sccad/3649329.3657333">Nesara Eranna Bethur, et al, “GNN-assisted Back-side Clock Routing Methodology for Advance Technologies”, ACM Design Automation Conference, 2024.</a> 

## Contributors
We gratefully acknowledge the following contributors:
| Name | Contribution |
| --- | --- |
| Junsik Yoon (Synopsys) | PDK development |
| Sandra Shaji (Samsung) | PDK development |
| Sungwoo Jung (Georgia Tech) | PDK update, GitHub page development and documentation |
| Zheng Yang (Georgia Tech) | OpenROAD setup and compatibility |

## Future Plans
We plan to support the following contents in the future:
- USC-3N-3D: 3nm PDK, ADK, and scripts for 3D IC design and simulation
- USC-3N-25D: 3nm PDK, ADK, and scripts for 2.5D IC design and simulation

## Contact
For questions or contributions, please contact the SCCAD Lab: Sungwoo Jung (sw.jung@gatech.edu), Robert Huang (yhhuang@gatech.edu), or Sung Kyu Lim (limsung@usc.edu).


## Acknowledgements

The development of this 3nm GAA PDK was made possible by referencing the following open-source PDKs. We gratefully acknowledge the contributions of the following projects, whose prior work served as valuable references throughout this development:

- ASAP7 PDK: https://github.com/The-OpenROAD-Project/asap7
- NCSU FreePDK3: https://github.com/ncsu-eda/FreePDK3
- GT3 PDK: https://github.com/azadnaeemi/GT3
- FakeRAM2.0: https://github.com/ABKGroup/FakeRAM2.0
