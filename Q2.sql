SELECT customer_id AS 'ID', custmer_customer AS 'Customer name', customer_city AS
    'city' from customer
        INNER JOIN sales ON
            customer.customer_key = sales.sales_customerKey
		INNER JOIN product ON 
			product.product_key = sales.sales_productKey
        WHERE customer_countryRegion = 'France' AND
				product_subcategory = 'Mountain Bikes'
        GROUP BY customer_id;
        
