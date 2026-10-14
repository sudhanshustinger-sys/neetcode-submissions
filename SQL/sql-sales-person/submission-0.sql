-- Write your query below
select distinct s.name from
sales_person as s left join
(
    select o.order_id, o.com_id, o.sales_id
    from orders as o left join company as c on o.com_id = c.com_id
    where c.name = 'CRIMSON'
) as oc on s.sales_id = oc.sales_id
where oc.sales_id is null;
