select ID_customer, count(*)
from customer
GROUP BY ID_customer
select ID_cart, count(*)
from cart
GROUP BY ID_cart