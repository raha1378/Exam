# Soal 1
USE exam;
SELECT SUM(Quantity*UnitPrice) AS TotalSale
FROM sale_table ;
 
#Soal 2
USE exam;
SELECT COUNT(DISTINCT customer) AS TotalCustomer
FROM sale_table  ;


#Soal 3
SELECT Product,
	   SUM(Quantity) AS ProductSale
FROM sale_table
GROUP BY Product
ORDER BY Product ASC;


#Soal 4
ALTER TABLE sale_table ADD Total INT;
UPDATE sale_table SET Total = Quantity*UnitPrice WHERE Total IS NULL;
SELECT Customer,
       SUM(total) AS TotalPrice,
       COUNT(customer) AS FactorNum, 
       SUM(quantity) AS SaleNum 
FROM sale_table 
WHERE Total > 1500 
GROUP BY Customer
ORDER BY Customer ASC;


#Soal 5
SELECT SUM(TotalQuantity * ProfitRatio) / 100 AS ProfitPercentage ,
       SUM(TotalPrice * ProfitRatio) / 100 AS ProfitAmount
FROM(
     SELECT S.Product,
             SUM(S.Quantity) AS TotalQuantity, 
             SUM(S.Total) AS TotalPrice, 
             P.ProfitRatio 
             FROM sale_table AS S INNER JOIN sale_profit AS P 
                  ON S.Product = P.Product 
                  GROUP BY Product
     ) 
      AS Profits;


#Soal 6
SELECT SUM(CustomerNum) AS TotalCustomers 
FROM(
     SELECT COUNT(DISTINCT Customer) AS CustomerNum,
     Date 
     FROM sale_table GROUP BY Date
     ) 
     AS tbl1;

