SELECT customer_key AS 'ID', custmer_customer AS 'Customer name', sum(sales_salesAmount) AS
    'sale Amount' from customer
        INNER JOIN sales ON
            customer.customer_key = sales.sales_customerKey
        WHERE customer_countryRegion = 'Germany'
        GROUP BY customer_key
        ORDER BY SUM(sales_salesAmount) DESC
        LIMIT 15;