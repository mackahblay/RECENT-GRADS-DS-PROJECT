USE college;
SELECT * FROM graduates;

-- EMPLOYMENT RATES ANALYSIS

  -- 1. What are the employment rates for each major and major category?
SELECT Major, 1 - Unemployment_rate AS employment_rate
FROM graduates
WHERE Employed IS NOT NULL
ORDER BY employment_rate DESC;

   -- Employment rate by major category
SELECT Major_category, 1 - Unemployment_rate AS employment_rate
FROM graduates
WHERE Employed IS NOT NULL
ORDER BY employment_rate DESC;

  -- 2. Which majors have the highest and lowest unemployment rates
SELECT Major, 1 - Unemployment_rate AS employment_rate
FROM graduates
WHERE Employed IS NOT NULL
ORDER BY employment_rate DESC;

        -- Majors with the highest employment rates are Mathematics and Computer Science, Botany, Soil Science
        -- Educational Administration and Supervision, all at 100%

SELECT Major, 1 - Unemployment_rate AS employment_rate
FROM graduates
WHERE Employed IS NOT NULL
ORDER BY employment_rate;

		-- Major with the lowest employment rate is Nuclear Engineering at 82.28%


-- FULL TIME VS PART-TIME EMPLOYMENT ANALYSIS

   -- 1. What percentage of graduates in each major are employed full-time versus part-time?
   
SELECT Major, (Full_time/Total)*100 AS Full_time_grads, (Part_time/Total)*100 AS Part_time_grads
FROM graduates;
   
   -- 2. Which majors have the highest rates of full-time, year-round employment?

SELECT Major, (Full_time_year_round/Total)*100 AS year_round_rates
FROM graduates
ORDER BY year_round_rates DESC
LIMIT 5;

				 -- Majors with the highest full-time, year-round employment rates are Mechanical Engineering related
                 -- Technologies, Electricial, Mechanical, and Precision Technologies and Production, Court Reporting,
                 -- Industrial Production Technologies, and Management Information Systems and Statistics


-- SALARY ANALYSIS

    -- 1. What are the median salaries for each major and major category?
    
        -- By Majors
SELECT Major, Median
FROM graduates
ORDER BY Median DESC;

        -- By Major Category
SELECT Major_category, AVG(Median) AS Median_Average
FROM graduates
GROUP BY Major_category
ORDER BY Median_Average DESC;



    -- 2. How do the 25th and 75th percentile salaries compare across different majors?

		-- 25th Percentile
SELECT Major, P25th
FROM graduates
ORDER BY Median DESC;

		-- 75th Percentile
SELECT Major, P75th
FROM graduates
ORDER BY Median DESC;


   -- 3. Which majors have the highest and lowest median salaries?
   
SELECT Major, Median
FROM graduates
ORDER BY Median DESC
LIMIT 1;

			-- Petroleum Engineering has the highest median salary
            
SELECT Major, Median
FROM graduates
ORDER BY Median 
LIMIT 1;

			-- Library Science has the lowest median salary



            
-- GENDER DISPARITY IN EMPLOYMENT AND SALARIES

    -- 1. What is the gender distribution in employment for each major?

SELECT Major, (Men/Total)*100 AS percentage_of_men, (Women/Total)*100 AS percentage_of_women 
FROM graduates;

    -- 2. Are there significant differences in salaries between men and women within the same major?

				-- We cannot tell given that the genders are not categorical data in the dataset hence we cannot perform
                -- group-by operations using gender. Additionally each major appears once without a distinction in income


    -- 3. How does the ShareWomen metric correlate with median salaries and employment rates?
    
		-- Median Salaries vs Share of Women
    
SELECT ShareWomen, Median
FROM graduates
ORDER BY Median DESC;

				-- The HIGHEST paying jobs generally have a low share of women. For example, the top 5 HIGHEST paying jobs have
                -- under 35% share of women. The highest paid job only has a 12.06% share of women. Conversely, the lowest paying
                -- jobs have the HIGHEST share of women with the top 5 LOWEST paying jobs having 63% or higher share of women

		
        -- Employment Rates vs Share of Women
        
SELECT ShareWomen, Unemployment_rate
FROM graduates
ORDER BY Unemployment_rate DESC;

				-- There is not a clear cut pattern between the share of women and employment rates
                



-- JOB QUALITY AND CAREER OUTCOMES ANALYSIS

        -- 1. What proportion of graduates in each major have jobs that require a college degree (College_jobs)?

SELECT Major, (College_jobs/Total) * 100 AS proportion
FROM graduates
ORDER BY proportion DESC;

        -- 2. How many graduates are employed in non-college jobs or low-wage jobs for each major?
        
SELECT Major, (Non_college_jobs + Low_wage_jobs) AS unrelated_jobs
FROM graduates
ORDER BY unrelated_jobs DESC;




-- UNDEREMPLOYMENT ANALYSIS


    -- 1. What percentage of graduates in each major are working in jobs that do not require a college degree?
    
SELECT Major, ((Non_college_jobs + Low_wage_jobs)/Total)*100 AS unrelated_jobs
FROM graduates
ORDER BY unrelated_jobs DESC;

    -- 2. Which majors have the highest rates of graduates in low-wage jobs?

SELECT Major, (Low_wage_jobs/Total)*100 AS low_wage_rate
FROM graduates
ORDER BY low_wage_rate DESC;



-- MAJOR-SPECIFIC INSIGHTS 


        -- 1. What is the total number of graduates in each major and major category?
        
SELECT Major_category, Major, SUM(total) AS num_of_graduates
FROM graduates
GROUP BY Major_category, Major
ORDER BY num_of_graduates DESC;
        
        -- 2. How does the sample size of each major compare to the total number of graduates?
        
SELECT Major, (Sample_size/Total)*100 AS Sample_Size_Percentage
FROM graduates
ORDER BY Sample_Size_Percentage DESC;

					-- The sample size is between 0.16% and 1.91% for each major
                    
                    
                    
                    
-- GENERAL TRENDS AND CORRELATIONS


        -- 1. Is there a correlation between the unemployment rate and median salary for different majors?
        
        SELECT Major, Unemployment_rate, Median
        FROM graduates
        ORDER BY Unemployment_rate;
        
        SELECT Major, Unemployment_rate, Median
        FROM graduates
        ORDER BY Median DESC;
        
				-- Jobs in STEM tend to have the lowest unemployment rate. With regard to median salary, STEM jobs specifically,
                -- engineering has the highest median income
                
	
    -- PREDICTIVE ANALYSIS IN PYTHON FILE