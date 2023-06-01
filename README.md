![HR-Analytics](https://github.com/abbas99-hub/HR-Job-Salary-Analysis-using-SQL-Power-BI/assets/60792939/2cd00e03-b756-484d-aa1c-26c9bab68d93)

# HR Job Salary Analysis
This project focuses on analyzing job salary data from Indeed using Python, Selenium, and SQL, and visualizing the results in Power BI. The data is scraped from Indeed job postings, pre-processed using Pandas in Python, and then loaded into a SQL database. SQL queries are used to analyze the data and generate insights, and the results are visualized in Power BI to create an interactive dashboard.

## Project Structure
The project is structured as follows:

* data_collection.ipynb: Python script for web scraping Indeed job postings using Selenium and storing the data in CSV format.
* data_preprocessing.py: Python script for data pre-processing using Pandas, cleaning and transforming the scraped data for analysis.
* database.sql: SQL script for creating the database and tables to store the pre-processed job salary data.
* sql_queries.sql: SQL queries for analyzing the job salary data, calculating averages, aggregating data, and extracting insights.
* job_salary_analysis.pbix: Power BI project file containing the dashboard visualizations and data connections.

## Data Collection
To collect job salary data, we use Python and Selenium to scrape Indeed job postings. The data_collection.ipynb script navigates to the desired job search page, extracts relevant information such as job title, salary, location, employer, and employer rating, and stores the data in a CSV file.

## Data Pre-processing
The scraped data in CSV format is pre-processed using the data_preprocessing.py script. This script uses Pandas to clean the data, handle missing values, and transform the data into a suitable format for analysis. This includes removing duplicates, converting data types, and performing any necessary data transformations.

## Database Setup
To store and analyze the job salary data, we set up a SQL database using the database.sql script. The script creates the necessary tables and schema to store the pre-processed data. The data from the CSV file is then loaded into the database for further analysis.

## SQL Analysis
The sql_queries.sql script contains SQL queries for analyzing the job salary data. These queries include calculating average salaries, aggregating data by location or employer, identifying top-paying employers, and extracting other relevant insights. These queries leverage SQL functions, joins, and aggregations to generate meaningful results.

## Power BI Dashboard
The job_salary_analysis.pbix file is a Power BI project file that connects to the SQL database and imports the pre-processed job salary data. It includes multiple interactive visualizations and dashboards to present the analysis results. The visualizations can be customized to display key metrics, trends, comparisons, and any other insights derived from the SQL queries.

## Getting Started
To run this project, follow these steps:

* Install the necessary Python libraries: Selenium, and Pandas.
* Execute the web_scraper.ipynb script to scrape job salary data from Indeed and save it as a CSV file.
* Run the pre-processor.ipynb script to clean and transform the scraped data.
* Execute the database.sql script to set up the SQL database and tables.
* Load the pre-processed data into the SQL database using your preferred method (e.g., SQL client).
* Run the SQL queries from sql_queries.sql to analyze the job salary data and extract insights.
* Open the job_salary_analysis.pbix Power BI project file to explore the visualizations and dashboards.
* Feel free to customize the scripts, queries, and visualizations according to your specific requirements and data analysis goals.

## Conclusion
The HR Job Salary Analysis project demonstrates the end-to-end process of collecting job salary data from Indeed, pre-processing it using Python, storing it in a SQL database, analyzing the data using SQL queries, and visualizing the results in Power BI. This workflow allows for a comprehensive exploration of job salary trends, comparisons, and other insights to support data-driven decision-making in HR departments.
