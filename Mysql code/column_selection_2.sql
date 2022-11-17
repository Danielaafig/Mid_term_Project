use olist;

#selecting and extracting specific columns from the table 
select order_id, count(order_id) from order_payments
group by order_id
order by count(order_id) desc;


#checking the table where there is same order_id have different payment_sequential
select * from order_payments;

select * from order_payments
where order_id='fa65dad1b0e818e3ccc5cb0e39231352'
order by payment_sequential ;



#sum up the payment value per order_id
select order_id, round(sum(payment_value),2) as final_payment from order_payments
group by order_id;


#extracting the average estimated delivery date ( which didn't give us number of days)
select customer_id, avg( order_estimated_delivery_date )
        as average_delivery_date
  from orders
  group by customer_id;
 
 
 #extracting  the different days between estimated delivery date and actual date 
  select order_id,customer_id,
    order_delivered_customer_date,
	order_estimated_delivery_date, 
    datediff(order_estimated_delivery_date, order_delivered_customer_date)as dif_del_est 
    from orders
    where order_delivered_customer_date is not null
    order by dif_del_est desc;
    
 
 #extracting amount of days that took to deliver actually and estimated
select order_id,customer_id,
    order_delivered_customer_date,
	order_estimated_delivery_date, 
    datediff(order_delivered_customer_date,order_purchase_timestamp ) as delivery_days,
	datediff(order_estimated_delivery_date,order_purchase_timestamp ) as estimated_days,
    datediff(order_estimated_delivery_date, order_delivered_customer_date)as dif_del_est
    from orders
    where order_delivered_customer_date is not null;
    
    
    
     #checkig how many order_id is per customer is and it was unique 
    select customer_id, count(order_id) from orders
    group by customer_id
    order by count(order_id) desc;
    
   
    
   #checking the difference prices between total_price and pyment_value to solve the null value  
    select sum(total_price) from order_status_year_price;
    select sum(payment_value) from order_payments;
   select * from order_payment;
   

    select * from order_payments;
    # eliminate the rows that have canceled their order
    select sum(total_price) from order_status_year_price
    where order_status not like "canceled";
   
   #tring to join the the two table but wasn't successfull
    select * from order_payments 
    join order_status_year_price on order_id=order_id; 
    
    
    