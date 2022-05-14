/*
Tạo 1 bản temp left join để biết được node đó có phải là leaf hay không
nếu P là null thì là root (hiển nhiên)
và ngược lại là Inner
*/
select N, case 
	       when Leaf is null then 'Leaf'
               when P is null then 'Root'
               else 'Inner'
          end
from (select distinct t1.N,t1.P,t2.P as Leaf 
      from BST t1 left join BST t2 on (t1.N=t2.P)
     ) as temp
order by N