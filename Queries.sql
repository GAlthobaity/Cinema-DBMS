-- A query to see whose card exprire next year (2022)
 Select cardNo, cardHolder, EXPDate
 from card
 where EXPDate like '%22';

------------------------------------------

-- A query to display Movie name and in which screen it is showing
select m.movie_id, title, screen_id
from movie m join ticket t on
m.movie_id = t.movie_id
order by title;

------------------------------------------

-- A query to count how many customers an employee manages
select employee_id , count(*)
from customer
group by employee_id;


------------------------------------------

-- A query to display customer ID and Name of who ordered max quantity
select c.customer_id, cname, qty as max_QTY
from customer c, order_ o
where c.customer_id = o.customer_id
and qty in (select max(qty)
from order_);
