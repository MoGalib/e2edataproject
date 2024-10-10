# End-to-End Data Pipeline Project
This project demonstrates an end-to-end data pipeline architecture using Microsoft SQL Server, Azure Data Factory (ADF), Azure Databricks, Snowflake, and dbt for data transformation and quality assurance, along with Power BI for reporting and machine learning for predictive modeling. The solution is built using the Medallion Architecture (Bronze, Silver, Gold layers), ensuring scalability, data quality, and analytical capabilities.

## Architecture Overview

Key Components:
Microsoft SQL Server (AdventureWorks DB): The source of raw data.
Azure Data Factory (ADF): Extracts data from SQL Server to the Bronze container in ADLS Gen2 using Copy Activity. Maps and loads transformed data from the Gold layer into Snowflake using Data Flow Activity.
Azure Data Lake Storage Gen2 (ADLS Gen2): Bronze Layer: Raw data from SQL Server.
Silver Layer: Transformed data using Azure Databricks.
Gold Layer: Clean, refined data for analytics.
Azure Databricks: Processes and transforms data from the Bronze layer and stores the results in the Silver container in ADLS Gen2.
Snowflake: Serves as the final destination for the Gold layer of data, optimized for analytics and reporting.
dbt (Data Build Tool): Performs generic and custom data quality tests on the Snowflake data. Validates and reconciles the data to ensure accuracy before passing it to downstream systems.
Power BI: Used for data visualization and reporting. Generates insights from the data in the Gold layer for business users.
Snowflake Notebook: Applies predictive modeling on the data for advanced analytics.

## Data Flow
Extraction (Bronze Layer): Data is extracted from SQL Server and stored in ADLS Gen2 Bronze container via ADF's Copy Activity.
Transformation (Silver Layer): Azure Databricks processes the raw data, applying necessary transformations, and stores it in the Silver container in ADLS Gen2.
Load and Refinement (Gold Layer): The transformed data from the Silver container is loaded into Snowflake, where further refinement and cleaning happen.
Testing and Validation: dbt performs data quality checks and validates the integrity of the data in Snowflake.
Analytics and Reporting: Once data passes all tests, it is used in Power BI for dashboard creation and machine learning for predictive analysis.

## Technologies Used
Microsoft SQL Server: Data source.
Azure Data Factory (ADF): Data extraction, transformation, and loading.
Azure Databricks: Data transformation.
Azure Data Lake Storage Gen2 (ADLS Gen2): Data storage.
Snowflake: Data warehouse.
dbt: Data validation and quality checks.
Power BI: Data visualization.
SNowflake Notebooks: Predictive analytics.

## How to Use
Clone the Repository:
git clone https://github.com/MoGalib/e2edataproject.git
Set Up the Environment: Ensure you have access to Azure Data Factory, Databricks, Snowflake, and Power BI.
Follow the pipeline steps as outlined in the architecture.
Run the Pipelines: Use Azure Data Factory for orchestration of data movement between SQL Server, ADLS Gen2, and Snowflake. Monitor and validate data transformation using dbt.
View Reports: Use Power BI to visualize insights and data analytics from the Snowflake warehouse.
