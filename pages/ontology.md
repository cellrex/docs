---
title: Ontology
layout: page
nav_enabled: true
nav_order: 3
last_modified_date: 05-06-2025
---


# CellRex Ontology
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

# Introduction to the CellRex Ontology

This section briefly introduces the CellRex ontology as presented in this paper and compares it with the NWB [NWB](https://nwb-schema.readthedocs.io/en/stable/format.html) (Neurodata Without Borders) data format in Version 2.8.0. CellRex is based on pydantic models, SQLite databases, and filesystem organization, whereas NWB relies on an HDF5 hierarchical file format, utilizing YAML schema definitions and a single HDF5 file per session. In CellRex, data is organized in JSON metadata files and database entries, while NWB employs groups, datasets, attributes, and links within the HDF5 file.

We do not intend to replace existing domain-specific standard ontologies such as NWB or BIDS, which have significantly contributed to the widespread distribution of data. Instead, our goal is to facilitate the organization of data across numerous files, enabling the curation of any file format. Although the hierarchy and attributes (or parameters) in CellRex are largely based on our in-vitro laboratory workflows, we have endeavored to align the parameter nomenclature as closely as possible with that of NWB. The following non-exhaustive comparison illustrates the areas in which CellRex provides a higher level of detail and highlights exemplary similarities between attributes.

Both ontologies share a basic structure, specifying information about the subject, session, measurement device, experimental influences, and additional details via `notes` fields. Many general session/experiment attributes are similar, such as `experimenter`, `lab`, `keywords`, and `notes`. In CellRex, the `experimentName` can be considered analogous to NWB’s `session_id`, while CellRex further distinguishes individual samples through the `sampleID` attribute. Additionally, the `protocol` in CellRex is more comprehensive, as it is loaded from a protocol repository. NWB’s `session_start_time` corresponds to CellRex's `date` and, optionally, `time`.

Regarding subjects, NWB’s basic Subject specification is tailored for neurophysiological experiments, including attributes such as `age` and `genotype`. In contrast, CellRex is tailored for in-vitro cell data classification. For instance, while both frameworks include `species`, CellRex uses `cellID` analogously to NWB’s `subject_id` and provides additional granularity with attributes such as `origin`, `organType`, `cellType`, and `brainRegion`. Moreover, the definition of `age` differs between the two ontologies; for in-vitro experiments, relative time metrics such as *days in vitro* or *days after plating* are more relevant.

Furthermore, the structure for capturing experimental influences in CellRex is more comprehensive. For example, while NWB represents pharmacology as a text field, CellRex models it as a distinct data class with additional attributes. Similarly, devices and dependent tasks (e.g., IF Staining) that can be performed with a particular device are modeled as specialized classes in CellRex, in contrast to NWB’s text descriptions.

NWB demonstrates particular strength in efficiently organizing specific time series arrays, with features such as offsets and resolutions optimized for electrophysiological and optical data.

To adjust the ontology to your needs, see the [Customization](customization) page.