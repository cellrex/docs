---
title: Home
layout: home
nav_enabled: true
nav_order: 1
last_modified_date: 20-02-2025
---

# CellRex
<img src="assets/CellRex-Logo_cropped.png" alt="Logo" align="right" width="30%" height="30%">

Welcome to CellRex, a user-friendly full stack application built with Python and Streamlit. This application allows you to upload, download, and manage your research data with ease. CellRex is a platform that establishes a link between biological metadata and experimentally generated files.

## Features
CellRex is built as a multipage app with three main pages:

1. Upload: This page allows you to upload data files by dragging and dropping them into a dedicated upload folder on your filesystem or your NAS and filling out a form with relevant information. The template and check features streamline the upload process, ensuring consistency and accuracy in the information provided.

2. Search: This page provides a search mask that you can use to specify search criteria and easily find data files.

3. Dashboard: This page provides insights about your data and helps you manage and organize your data efficiently.

## Contributing
We welcome contributions to CellRex! See the repository’s [readme.md](https://github.com/cellrex/cellrex/blob/main/readme.md) for instructions on how you can set up the development environment.


## Citation
If you find CellRex useful in your research, please cite:
```bibtex
@article{hoelter2025cellrex,
title = {CellRex: Software platform for managing biological cell data},
journal = {SoftwareX},
volume = {31},
pages = {102284},
year = {2025},
issn = {2352-7110},
doi = {https://doi.org/10.1016/j.softx.2025.102284},
url = {https://www.sciencedirect.com/science/article/pii/S2352711025002511},
author = {Jan Hölter and Tim Rickmeyer and Christiane Thielemann},
keywords = {Research data management (RDM), Laboratory information management system (LIMS), Biological cell, Microscopic images, Electrophysiological recordings, Software-as-a-service (SaaS)},
abstract = {This work introduces the software platform CellRex, a research data management system for laboratories capable of storing, searching, and enriching data with biological metadata. CellRex addresses data management challenges by storing data in an ontology-based directory structure within the filesystem, with metadata saved as JSON files and in a document-oriented SQLite database. The framework, deployed as container services in a software-as-a-service model, features a web-based GUI and API for user interaction and machine-readable access, providing functionalities such as duplicate detection, experiment grouping, and templating. CellRex improves research efficiency and facilitates data reuse, providing a targeted solution for laboratories focused on cell analysis research.}
}
```

## License
Copyright 2024 CellRex. All rights reserved.
