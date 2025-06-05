---
title: Customization
layout: page
nav_enabled: true
nav_order: 6
last_modified_date: 05-06-2025
---


# CellRex Customization
{: .no_toc }

<details closed markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
- TOC
{:toc}
</details>

-----

# Customization options for CellRex ontology

Multiple levels of customization are available.

The most straightforward approach is to use the default ontology and modify the configuration file (`labdata.yml`) according to your requirements, such as adding new keywords, species, or drugs. Certain variables have dependencies that are described in the documentation at [Parameters](parameters)

If the file path composition requires alteration, configure the function `create_filepath()` in `cellrex/backend/router/biofiles.py`. For reordering operations only, it is possible to provide the function with the list `key_order` or specify new defaults.

Modifications to the data model can be implemented in the file `cellrex/backend/model/biofile.py` by adding or modifying the corresponding pydantic classes. It is important to also reflect these changes in `cellrex/backend/model/search.py` to ensure functionality for searchability. Note that these modifications are not automatically propagated to the frontend.
The basic design of the frontend is to structure "pages" with distinct functionalities, such as upload, search, and dashboard. These pages utilize "component"s that are categorized either according to their functional role in a page or by semantic definitions, such as "general" or "device". Within a component, Streamlit elements and API responses are implemented.