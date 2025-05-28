---
title: Installation
layout: page
nav_enabled: true
nav_order: 4
last_modified_date: 28-05-2025
---
<style>
h2 {
color: #f77e7e; /* $red-000 */
 }
</style>
# CellRex Installation Guide
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

# System Requirements

Before installing CellRex, please ensure your system meets the following requirements:

- **Memory**: Minimum 8GB RAM (16GB recommended for large datasets)
- **Storage**: At least 2GB free disk space for installation
- **Containerization**: Docker or Podman installed for running the application
- **Network**: Internet connection for initial setup and dependencies

# Compatibility Matrix

## Server Operating Systems (FastAPI Backend)

| Operating System | Version | Status | Notes |
|------------------|---------|--------|-------|
| **Linux Ubuntu** | 22.x , 24.x| ✅ **Tested & Working** | Recommended for production |
| **macOS** | 14.x , 15.x | ✅ **Tested & Working** | Development environment |
| **Windows** | 10, 11 | ⚠️ **Not Tested** | Should work but requires verification |

## Client Web Browsers (Streamlit Frontend)

| Browser | Version | Status | Notes |
|---------|---------|--------|-------|
| **Google Chrome** | - | ✅ **Tested & Working** | Recommended browser |
| **Mozilla Firefox** | - | ✅ **Tested & Working** | Fully supported |
| **Safari** | - | ✅ **Tested & Working** | macOS/iOS compatible |
| **Brave** | - | ✅ **Tested & Working** | Likely compatible (Chromium-based) |

## Legend

- ✅ **Tested & Working**: Fully tested and confirmed compatible
- ⚠️ **Not Tested**: Expected to work but not yet verified
- ❌ **Known Issues**: Tested but has compatibility problems
