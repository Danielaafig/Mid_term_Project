use olist;

#checking collecting alll the payment for same order_id 
select order_id,sum(payment_value) from order_payments
group by order_id ;


#checking how many different states we have in the table
select geolocation_state,count(geolocation_state) from geolocation
group by geolocation_state;

#selecting and extracting specific columns from the table 
select order_id, customer_id from orders;

#selecting and extracting specific columns from the table 
select mql_id,business_segment,business_type,seller_id,declared_monthly_revenue from closed_deals;


#selecting and extracting specific columns from the table 
select customer_id , customer_city, customer_state, customer_zip_code_prefix from customers;

#selecting and extracting all columns from the table 
select * from geolocation;
select geolocation_state, avg(geolocation_lat), avg(geolocation_lng) from geolocation
group by geolocation_state;


#selecting and extracting specific columns from the table 
select mql_id, origin from marketing_qualified_leads;

#selecting and extracting specific columns from the table 
select order_id, customer_city, customer_id,price,freight_value, final_price  from order_customer_items_paid;

#selecting and extracting specific columns from the table 
select order_id, product_id, seller_id, price, freight_value from order_items;


#selecting and extracting specific columns from the table 
select order_id, payment_value from order_payments;


#selecting and extracting specific columns from the table 
select order_id, review_score from order_reviews;


#selecting and extracting specific columns from the table 
select order_id, year, product_id, category, total_price from order_status_year_price;


#selecting and extracting specific columns from the table 
select product_id, cat, price from prod_cat_price;



#selecting and extracting all columns from the table 
select * from sellers;

#selecting and extracting all columns from the table 
select * from orders;
