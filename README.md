### Overview
- **Libraries Used**: 
  - `leaflet`: For creating interactive maps.
  - `rgdal`: For reading and manipulating geospatial data.
  - `dplyr`: For data manipulation.
  - `openxlsx`: For reading Excel files.
  
- **Data Sources**:
  - A GeoJSON file (`indonesia-prov.geojson`) containing the geographical data of Indonesian provinces.
  - An Excel file (`Data_Harian_Kasus_per_Provinsi_COVID-19_Indonesia.xlsx`) with COVID-19 case data per province.

- **Workflow**:
  1. The script reads in the geographical data and the COVID-19 data.
  2. It merges these datasets by matching province codes.
  3. It defines a color palette to represent different ranges of COVID-19 death cases.
  4. It generates a map using `leaflet`, highlighting provinces with different colors based on the number of deaths and includes labels with the province names and death counts.

### Key Actions
- The script reads and processes geographical and COVID-19 data.
- It visualizes the data on an interactive map with different color codings for various death tolls.
- It adds interactivity, such as highlighting provinces and showing legends.

```markdown
# COVID-19 Indonesia Map Visualization

## Introduction

This project visualizes COVID-19 death cases across Indonesian provinces using an interactive map. The map is generated using the R programming language, leveraging the `leaflet` package for map creation and interactivity. The data is sourced from a GeoJSON file containing geographical data and an Excel file with COVID-19 case information.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Data Sources](#data-sources)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Examples](#examples)
- [License](#license)

## Installation

1. **Clone the repository** (if applicable):
   ```bash
   git clone <repository_url>
   ```
2. **Install the required R packages**:
   You can install the necessary R packages using the following commands:
   ```r
   install.packages("leaflet")
   install.packages("rgdal")
   install.packages("dplyr")
   install.packages("openxlsx")
   ```

## Usage

1. **Prepare the data files**:
   - Ensure that the following data files are available in the specified paths:
     - `indonesia-prov.geojson`: Geographical data of Indonesian provinces.
     - `Data_Harian_Kasus_per_Provinsi_COVID-19_Indonesia.xlsx`: COVID-19 case data.

2. **Run the R script**:
   - Execute the script using an R environment:
   ```r
   source("leaflet peta covid indonesia.R")
   ```
   - The script will generate an interactive map displaying COVID-19 death cases by province.

## Features

- **Interactive Map**: The map allows users to interact with the data by hovering over provinces to see detailed case information.
- **Color Coding**: Provinces are color-coded based on the number of death cases, providing a quick visual overview of the situation.
- **Legend and Labels**: The map includes a legend for the color coding and labels with the province name and death count.

## Data Sources

- **Geographical Data**: `indonesia-prov.geojson`
- **COVID-19 Data**: `Data_Harian_Kasus_per_Provinsi_COVID-19_Indonesia.xlsx`

## Dependencies

- **R Packages**:
  - `leaflet`: For creating interactive maps.
  - `rgdal`: For reading and manipulating spatial data.
  - `dplyr`: For data manipulation.
  - `openxlsx`: For reading Excel files.

## Configuration

- Update the file paths in the script to point to the correct locations of your data files if they are stored differently.

## Examples

- **Generated Map**: Once the script is executed, it will display a map where you can interactively explore COVID-19 death cases across Indonesian provinces.

## License

This project is licensed under the [MIT License](LICENSE).
```

### Notes:
- Ensure that the data files (`indonesia-prov.geojson` and `Data_Harian_Kasus_per_Provinsi_COVID-19_Indonesia.xlsx`) are available in the paths specified in the script or modify the script accordingly.
- Replace `<repository_url>` with the actual URL if this is part of a repository.

If you need any modifications or additional sections, feel free to ask!
