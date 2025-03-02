# Vanilla Steel Data Analysis Project

## Project Overview

Vanilla Steel is a digital platform that revolutionizes metal trading by processing large volumes of supplier and buyer data to facilitate material trading. This project aims to provide data-driven insights to optimize the marketplace and enhance analytics for internal products. The key objectives are:

- Cleaning and preparing supplier data for analysis.
- Creating analytical dashboards to support the sales team.
- Building a recommendation system to match supplier materials with buyer preferences.

The solution leverages tools such as Python, SQL, Google BigQuery, and Looker Studio to demonstrate proficiency in data cleaning, transformation, visualization, and pipeline creation.

---

## Accessing the Solution

To reproduce or explore the solution:

- **Task 1**: 
  - Run the data cleaning and preparation scripts in the [Google Colab notebook](https://colab.research.google.com/drive/1nPeRURA7pe17XE_eSwIJnnC8OjKRaaPK?usp=sharing).
- **Task 2**: 
  - View the dashboards in [Looker Studio](https://lookerstudio.google.com/reporting/a831b388-bb92-4231-84ce-bbf33750de43).
  - Review the SQL scripts in [Google BigQuery](https://console.cloud.google.com/bigquery?sq=61337766398:c1e621af1814403fb2d7fb8045d4251d).
- **Task 3**: 
  - Access the recommendation query in [Google BigQuery](https://console.cloud.google.com/bigquery?sq=61337766398:0b41d30579c54b01ad1ee2eb3e6dde70).
  - Explore the datasets in [Google BigQuery](https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1svanilla-steel-project!2sbuyer_preferences).

---

## Solution Approach

### Task 1: Data Cleaning & Preparation

- **Objective**: Clean and merge supplier datasets (`supplier_data_1.xlsx` and `supplier_data_2.xlsx`) into a single inventory dataset.
- **Approach**: 
  - Python scripts were developed to clean the raw supplier data, addressing issues such as missing values, inconsistent formats, and duplicates.
  - The cleaned datasets were merged into a unified inventory dataset, ready for further analysis.
- **Tools**: Python (Pandas), Google Colab.

---

### Task 2: Analysis & Insights

- **Objective**: Design and implement dashboards for the sales team to analyze account manager performance and revenue from buyer companies.
- **Approach**:
  - SQL queries were crafted in Google BigQuery to calculate account manager performance (based on their share in deals) and aggregate revenue data from buyer companies.
  - Looker Studio was used to create interactive dashboards visualizing these insights.
- **Reports**:
  - **Account Manager Performance**: Calculates each account manager's attributed profit share (100% if on both buyer and supplier sides, 50% if on one side).
  - **Revenue Reporting from Buyer Companies**: Summarizes revenue by buyer company, segmented by month and region.
- **Tools**: SQL (Google BigQuery), Looker Studio.

---

### Task 3: Buyer Preference Matching

- **Objective**: Create a recommendation system that matches supplier materials to buyer preferences based on criteria such as grade, finish, thickness, and weight.
- **Approach**:
  - A data pipeline was implemented in Google BigQuery using SQL to join supplier data with buyer preferences.
  - The pipeline identifies materials meeting buyer criteria and generates a recommendation table. Note that exact matches were limited due to precise decimal-based criteria, and no assumptions were made about tolerances given the technical nature of the data.
- **Datasets**:
  - `supplier_data_1.xlsx`
  - `supplier_data_2.xlsx`
  - `buyer_preferences.xlsx`
- **Tools**: SQL (Google BigQuery).

---

## Submission Details

- **Git Repository**: The complete code and documentation are available in the [GitHub repository](https://github.com/your-repo-link) *(replace with actual link)*.
- **Documentation**: 
  - Detailed steps and decisions for each task are documented within the respective scripts and notebooks.
  - The repository includes this `README.md` with setup and execution instructions.
- **Report**: The Looker Studio dashboard has been shared via the provided link with access granted to `tahir.khan@vanillasteel.com`.

---

## Conclusion

This project addresses real-world data challenges in the metal trading industry, showcasing:

- **Technical Proficiency**: Effective use of Python, SQL, Google BigQuery, and Looker Studio for data processing and visualization.
- **Problem-Solving**: Solutions for data cleaning, performance metrics calculation, and buyer-supplier matching, despite challenges like limited exact matches in Task 3.
- **Documentation**: Clear and concise documentation to ensure reproducibility and understanding.

While not perfect, the solution provides a strong foundation for further refinement and meets the core assessment objectives.

--- 
