# Barcelona - ETL Project

## Team

Alejandro Llamas and Lindsey Shafer


## Finding Data

We utilized [Kaggle](https://www.kaggle.com/) to find data sources (csv files) regarding car accidents and unemployment rates in Barcelona, Spain in 2017.

## Data Cleanup & Analysis

∙ Remove unneeded columns from the csv files, including numeric codes for districts and neighborhoods (we already had the names of both and felt that provided more information). We also renamed several columns to make the database upload cleaner and more efficient.<br>
∙ Created a serial ID column to provide a unique identifier and become the primary key once the information was loaded into the database.<br>
∙ Added both of the cleaned CSVs into a Postgres database using pgAdmin. 

## Project Report

* **E**xtract: the original data sources were found on Kaggle.com. The CSVs were then uploaded into Jupyter notebook and cleaned up before all the data was uploaded into a Postgres database via pgAdmin.

* **T**ransform: The datasets we found were already in CSV format, so our data cleaning primarily consisted of dropping unneeded columns, renaming the remaining columns for consistency within the database and adding a serial ID column so that our database would have a primary key.

* **L**oad: We were interested in finding out whether unemployment claims were correlated to car accident reports in Barcelona, Spain during 2017.
