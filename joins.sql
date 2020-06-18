select customer.ID_customer , customer.name , products.name from customer inner join products where customer.ID_customer=products.ID_customer
select customer.ID_customer , customer.name , payment.ID_payment from customer left join payment on customer.ID_customer=payment.ID_customer
SELECT A.name AS name1, B.name AS name2, A.phone  
FROM Customer A, Customer B 
WHERE A.ID_customer <> B.ID_customer  
AND A.phone = B.phone 
 ORDER BY A.phone; 