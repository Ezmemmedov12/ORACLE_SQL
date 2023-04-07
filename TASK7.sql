//herbir sobede ne qederlik mehsul satilib//
select i.warehouse_id,round(sum(p.list_price*i.quantity))from products p,inventories i group by i.warehouse_id order by warehouse_id;

//bir cedvel daxilinde maasi iscilerin maasindan cox olan menegerleri cap etmek//
select * from emp e join emp m on e.empno=m.mgr where m.sal>e.sal;