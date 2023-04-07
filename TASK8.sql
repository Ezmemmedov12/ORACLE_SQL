
//Hans? i?çi hans? anbardan n? q?d?r m?hsul sat?b joinsiz yazmaq//

select * from  orders o, order_items i where o.order_id=i.order_id;  
create or replace view view_oe as
(select order_id,employee_id from employees e,orders o where employee_id=salesman_id);
select * from view_oe;
create or replace view vo as
(select v.order_id,v.employee_id,o.product_id,o.quantity from view_oe v,order_items o where v.order_id=o.order_id);
select * from vo;
create or replace view vie_12 as
(select v.employee_id,s.product_id,s.sum_quantity from (select product_id, sum(quantity) as sum_quantity from vo group by product_id) s,vo v where s.product_id=v.product_id);
select * from vie_12;
create or replace view vie_13 as
(select v.employee_id,v.product_id,v.sum_quantity,i.warehouse_id from vie_12 v,inventories i where v.product_id=i.product_id);
select * from vie_13;
select employee_id,warehouse_id,sum(sum_quantity) quantity from vie_13 group by warehouse_id,employee_id order by employee_id;
