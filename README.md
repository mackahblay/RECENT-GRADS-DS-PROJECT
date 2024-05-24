# Project Title: Analysis of Employment and Salary Outcomes for Recent Graduates

## Project Overview

This project aims to analyze the employment and salary outcomes of recent graduates across different majors and major categories. The analysis focuses on understanding the factors that influence employment rates, salary distributions, gender disparities, and job quality among graduates. By leveraging SQL for data extraction, Python for statistical analysis, and Excel for visualization, the project provides comprehensive insights into the career outcomes of recent graduates.
Objectives

    Determine the employment rates and salary distributions by major and major category.
    Analyze the impact of gender on employment and salary outcomes.
    Identify the predictors of median salary and employment rates using linear regression.
    Visualize the findings using various charts and graphs in Excel.

## Data Columns

The dataset includes the following columns:

    index
    Rank
    Major_code
    Major
    Major_category
    Total
    Sample_size
    Men
    Women
    ShareWomen
    Employed
    Full_time
    Part_time
    Full_time_year_round
    Unemployed
    Unemployment_rate
    Median
    P25th
    P75th
    College_jobs
    Non_college_jobs
    Low_wage_jobs

## Analysis Questions

### Employment and Salary Analysis

    What are the employment rates for each major and major category?
    Which majors have the highest and lowest unemployment rates?
    What are the median salaries for each major and major category?
    How do the 25th and 75th percentile salaries compare across different majors?
    How does gender distribution affect employment and salary outcomes?

### Job Quality and Career Outcomes

    What proportion of graduates in each major have jobs that require a college degree?
    How many graduates are employed in non-college jobs or low-wage jobs for each major?

### Major-Specific Insights

    What is the total number of graduates in each major and major category?
    How does the rank of each major correlate with employment rates and salaries?

### General Trends and Correlations

    Is there a correlation between the unemployment rate and median salary for different majors?
    How does the ShareWomen metric correlate with the unemployment rate and job types?

### Predictive Analysis

    Which factors predict the median salary and employment rates among graduates?

## Methodology

### Data Extraction and Preparation

    SQL:
        Extract relevant data from the database.
        Perform data cleaning and preparation.

    Python:

       Load data into a pandas DataFrame for further analysis.
      Conduct statistical analysis and linear regression using the sklearn library.



### Data Visualization

    Excel:
        Create bar charts, pie charts, scatter plots, line charts, stacked bar charts, and histograms to visualize the findings.
        Use PivotTables to summarize and explore data interactively.

### Key Visualizations

    Bar Chart: Employment Rates by Major Category
        Displays the proportion of employed graduates in each major category.

    Pie Chart: Gender Distribution in Employment
        Shows the proportion of men and women among employed graduates.

    Scatter Plot: ShareWomen vs. Median Salary
        Analyzes the relationship between the percentage of women in a major and the median salary.

    Line Chart: Salary Percentiles by Major
        Shows the 25th, 50th (median), and 75th percentile salaries for different majors.

    Stacked Bar Chart: Full-Time vs. Part-Time Employment by Major Category
        Compares full-time and part-time employment across different major categories.

    Histogram: Distribution of Median Salaries
        Illustrates the distribution of median salaries across all majors.

## Conclusion

This project provides a comprehensive analysis of the employment and salary outcomes for recent graduates. By integrating SQL for data extraction, Python for regression analysis, and Excel for visualization, it delivers actionable insights into how different factors affect graduates' career prospects. The findings can inform educational institutions, policymakers, and career counselors in their efforts to improve employment outcomes and address salary disparities.
Enhancements and Future Work

 ## Further Statistical Analysis:
    Expand the regression models to include interaction terms and non-linear effects.
    Advanced Visualizations: Use advanced visualization tools such as Tableau or Power BI for more interactive and dynamic visual representations.
    Machine Learning: Implement machine learning algorithms to predict employment outcomes and salaries with higher accuracy.

