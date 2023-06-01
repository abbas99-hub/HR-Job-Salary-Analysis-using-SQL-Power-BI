-- Database Details:

-- Host: localhost
-- username: postgres
-- password: ******** ( your password)
-- database: hr_data_science

-- Once we are done with database setup, we have to create a table named hr_salary_data with column names and its type
 
create table hr_salary_data(
    title varchar,
    salary float,
    location varchar,
    employer varchar,
    employer_rating float,
    summary varchar,
    search_city varchar,
    search_role varchar,
    country varchar
)

-- For inserting values we use following command:
 \copy  hr_salary_data FROM 'C:\Users\Admin\DataScienceProjects\SQL_Projects\HR-
 Job-Salary-Analysis-using-SQL-Power-BI\Data\pre_processed_data.csv' WITH (FORMAT CSV, HEADER true, DELIMITER ',',
  encoding 'UTF8')