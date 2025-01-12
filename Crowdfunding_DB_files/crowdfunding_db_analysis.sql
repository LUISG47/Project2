--Show that all the tables were created correctly
SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM subcategory;
SELECT * FROM category;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TABLE 1
-- This table joins all the tables putting the outcome of the campaign as successfull and ordering by the amount pledged from highest to lowest displaying only the first 10 results
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
    c.cf_id,
    co.first_name,
    co.last_name,
    co.email,
    c.company_name,
    c.description,
    c.goal,
    c.pledged,
    c.outcome,
    c.backers_count,
    c.country,
    c.currency,
    c.launched_date,
    c.end_date,
    cat.category AS category,
    sub.subcategory AS subcategory
FROM 
    campaign c
JOIN 
    contacts co ON c.contact_id = co.contact_id
JOIN 
    category cat ON c.category_id = cat.category_id
JOIN 
    subcategory sub ON c.subcategory_id = sub.subcategory_id
WHERE 
    outcome = 'successful'
ORDER BY 
    pledged DESC  
LIMIT 10;


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TABLE 2
-- This table joins all the tables putting the outcome of the campaign as failed and ordering by the amount pledged from highest to lowest displaying only the first 10 results
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
    c.cf_id,
    co.first_name,
    co.last_name,
    co.email,
    c.company_name,
    c.description,
    c.goal,
    c.pledged,
    c.outcome,
    c.backers_count,
    c.country,
    c.currency,
    c.launched_date,
    c.end_date,
    cat.category AS category,
    sub.subcategory AS subcategory
FROM 
    campaign c
JOIN 
    contacts co ON c.contact_id = co.contact_id
JOIN 
    category cat ON c.category_id = cat.category_id
JOIN 
    subcategory sub ON c.subcategory_id = sub.subcategory_id
WHERE 
    outcome = 'failed'
ORDER BY 
    pledged DESC  
LIMIT 10;

----------------------------------------------------------------------------------
--TABLE 3
-- This tables now groups the campaigns by category and shows the top 10 
-- successfull campaigns grouped by category
----------------------------------------------------------------------------------

SELECT 
    c.category_id,      
    cat.category AS category,
    COUNT(*) AS number_of_successful_campaigns,
    SUM(c.pledged) AS total_pledged,
    'successful' AS outcome  -- Static value since we are only counting successful outcomes
FROM 
    campaign c
JOIN 
    contacts co ON c.contact_id = co.contact_id
JOIN 
    category cat ON c.category_id = cat.category_id
JOIN 
    subcategory sub ON c.subcategory_id = sub.subcategory_id
WHERE 
    c.outcome = 'successful'
GROUP BY 
    c.category_id, cat.category
ORDER BY 
    total_pledged DESC  -- Order by total pledged amount in descending order
LIMIT 10;


----------------------------------------------------------------------------------
--TABLE 4
-- This tables now groups the campaigns by category and shows the top 10 
-- failed campaigns grouped by category
----------------------------------------------------------------------------------

SELECT 
    c.category_id,      
    cat.category AS category,
    COUNT(*) AS number_of_successful_campaigns,
    SUM(c.pledged) AS total_pledged,
    'failed' AS outcome  -- Static value since we are only counting successful outcomes
FROM 
    campaign c
JOIN 
    contacts co ON c.contact_id = co.contact_id
JOIN 
    category cat ON c.category_id = cat.category_id
JOIN 
    subcategory sub ON c.subcategory_id = sub.subcategory_id
WHERE 
    c.outcome = 'failed'
GROUP BY 
    c.category_id, cat.category
ORDER BY 
    total_pledged DESC  -- Order by total pledged amount in descending order
LIMIT 10;
