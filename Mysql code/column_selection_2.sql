use olist;

select order_id, count(order_id) from order_payments
group by order_id
order by count(order_id) desc;

select * from order_payments;

select * from order_payments
where order_id='fa65dad1b0e818e3ccc5cb0e39231352'
order by payment_sequential ;

select order_id, round(sum(payment_value),2) as final_payment from order_payments
group by order_id;



select customer_id, avg( order_estimated_delivery_date )
        as average_delivery_date
  from orders
  group by customer_id;
  
  select order_id,customer_id,
    order_delivered_customer_date,
	order_estimated_delivery_date, 
    datediff(order_estimated_delivery_date, order_delivered_customer_date)as dif_del_est 
    from orders
    where order_delivered_customer_date is not null
    order by dif_del_est desc;
    
    
select order_id,customer_id,
    order_delivered_customer_date,
	order_estimated_delivery_date, 
    datediff(order_delivered_customer_date,order_purchase_timestamp ) as delivery_days,
	datediff(order_estimated_delivery_date,order_purchase_timestamp ) as estimated_days,
    datediff(order_estimated_delivery_date, order_delivered_customer_date)as dif_del_est
    from orders
    where order_delivered_customer_date is not null;