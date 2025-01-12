SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM subcategory;
SELECT * FROM category;


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
