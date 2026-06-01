-- Total Sales
SELECT SUM(Total) AS Total_Sales
FROM walmart_sales;

-- Sales by Branch
SELECT Branch,
       SUM(Total) AS Revenue
FROM walmart_sales
GROUP BY Branch
ORDER BY Revenue DESC;

-- Top Product Line
SELECT Product_line,
       SUM(Total) AS Revenue
FROM walmart_sales
GROUP BY Product_line
ORDER BY Revenue DESC;

-- Average Rating
SELECT AVG(Rating) AS Avg_Rating
FROM walmart_sales;
