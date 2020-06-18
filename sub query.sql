SELECT address
  FROM customer 
 WHERE ID_customer IN (SELECT ID_customer
                FROM products
               WHERE ID_product=1)
SELECT name
  FROM customer 
 WHERE ID_customer IN (SELECT ID_customer
                FROM cart
               WHERE ID_cart=1)
SELECT name
  FROM products 
 WHERE ID_product IN (SELECT ID_product
                FROM cart
               WHERE price>200)