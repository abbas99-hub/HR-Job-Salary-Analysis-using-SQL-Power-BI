-- 1. Count the number of job listings in each location:
SELECT location, COUNT(*) as job_count
FROM dataset_name
GROUP BY location
ORDER BY job_count DESC;
-- This query will provide a breakdown of job listings by location,
-- allowing us to identify the most popular job locations.


-- 2. Calculate the average salary by location:
SELECT location, AVG(salary) as average_salary
FROM dataset_name
GROUP BY location
ORDER BY average_salary DESC;
-- This query will help we determine the average salary in each location, allowing we to compare salary levels
-- across different areas.


-- 3. Identify the highest paying jobs:
SELECT title, salary, location
FROM dataset_name
ORDER BY salary DESC
LIMIT 10;
-- This query will retrieve the top 10 job titles with the highest salaries, along with their corresponding locations.


-- 4. Find the average salary for each job title:
SELECT title, AVG(salary) as average_salary
FROM dataset_name
GROUP BY title
ORDER BY average_salary DESC;
-- This query will calculate the average salary for each job title, helping we identify which roles tend to offer 
-- higher compensation.


-- 5. Analyze employer ratings and average salaries:
SELECT employer, employer_rating, AVG(salary) as average_salary
FROM dataset_name
GROUP BY employer, employer_rating
ORDER BY employer_rating DESC;
-- This query combines employer ratings with average salaries, allowing we to evaluate the correlation between 
-- employer reputation and salary levels.


-- 6. Filter jobs by role and location:
SELECT title, salary, location
FROM dataset_name
WHERE search_role = 'Data Scientist' AND search_city = 'New York'
ORDER BY salary DESC;
-- This query allows we to filter job listings based on specific roles and locations. In this example, it retrieves
-- data scientist jobs in New York, sorted by salary in descending order.


-- 7. Identify the distribution of salaries:
SELECT COUNT(*) as job_count, 
       CASE
           WHEN salary < 50000 THEN 'Below 50k'
           WHEN salary >= 50000 AND salary < 100000 THEN '50k - 100k'
           WHEN salary >= 100000 AND salary < 150000 THEN '100k - 150k'
           ELSE 'Above 150k'
       END as salary_range
FROM dataset_name
GROUP BY salary_range
ORDER BY job_count DESC;
-- This query groups job listings into salary ranges and provides a count of jobs in each range, allowing we to 
-- observe the distribution of salaries.


-- 8. Determine the average salary by job role:
SELECT search_role, AVG(salary) as average_salary
FROM dataset_name
GROUP BY search_role
ORDER BY average_salary DESC;
-- This query calculates the average salary for each job role, helping we understand the salary differences across
-- different job functions.


-- 9. Explore the average salary by country:
SELECT country, AVG(salary) as average_salary
FROM dataset_name
GROUP BY country
ORDER BY average_salary DESC;
-- This query provides the average salary for each country, allowing we to compare salary levels between different
-- countries.


-- 10. SELECT employer, employer_rating, COUNT(*) as job_count
FROM dataset_name
GROUP BY employer, employer_rating
HAVING job_count > 10
ORDER BY employer_rating DESC;
-- This query retrieves employers with their ratings and the count of job listings, considering only employers with
-- more than 10 job listings. It helps identify highly rated employers with a significant presence in the dataset.


-- 11. Analyze the relationship between employer ratings and salaries:
SELECT employer_rating, COUNT(*) as job_count, AVG(salary) as average_salary
FROM dataset_name
GROUP BY employer_rating
HAVING job_count > 10
ORDER BY employer_rating DESC;
-- This query combines employer ratings with job counts and average salaries, focusing on employers with more than 10
-- job listings. It allows we to investigate any correlation between employer ratings and salary levels.


-- 12. Identify the top factors influencing salary:
SELECT title, search_role, location, AVG(salary) as average_salary
FROM dataset_name
GROUP BY title, search_role, location
ORDER BY average_salary DESC;
-- This query provides the average salary for different job titles, roles, and locations. By analyzing the results, 
-- you can identify the key factors that influence salary levels.


-- 13. Calculate the salary range for each job role:
SELECT search_role, MIN(salary) as min_salary, MAX(salary) as max_salary
FROM dataset_name
GROUP BY search_role;
-- This query determines the minimum and maximum salaries for each job role, helping you understand the salary range
-- associated with different positions.

-- 14. Analyze the impact of employer rating on salaries for specific roles:
SELECT search_role, employer_rating, AVG(salary) as average_salary
FROM dataset_name
GROUP BY search_role, employer_rating
ORDER BY search_role, employer_rating DESC;
-- This query examines the average salary for different job roles based on employer ratings. It can reveal if there is
-- a correlation between employer rating and salary within specific roles.


-- 15. Explore the relationship between experience level and salary:
SELECT search_role, experience_level, AVG(salary) as average_salary
FROM dataset_name
GROUP BY search_role, experience_level
ORDER BY search_role, average_salary DESC;
-- This query analyzes the average salary for different job roles based on experience levels. It helps determine the
-- impact of experience on salary within various roles.


-- 16. Identify the average salary for remote jobs:
SELECT search_role, AVG(salary) as average_salary
FROM dataset_name
WHERE location = 'Remote'
GROUP BY search_role
ORDER BY average_salary DESC;
-- This query calculates the average salary for different job roles specifically for remote positions. It allows you
-- to understand the salary levels offered for remote work in various roles.


-- 17. Determine the salary distribution for specific locations:
SELECT location, PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY salary) as q1_salary,
       PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY salary) as median_salary,
       PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY salary) as q3_salary
FROM dataset_name
GROUP BY location;
-- This query calculates the first quartile (q1), median, and third quartile (q3) salaries for each location. It 
-- helps visualize the salary distribution and provides insights into the salary ranges within different areas.

