use olist;
select order_id,sum(payment_value) from order_payments
group by order_id 
;
select geolocation_state,count(geolocation_state) from geolocation
group by geolocation_state;

select order_id, customer_id from orders;


select mql_id,business_segment,business_type,seller_id,declared_monthly_revenue from closed_deals;

select customer_id , customer_city, customer_state, customer_zip_code_prefix from customers;

select * from geolocation;

select mql_id, origin from marketing_qualified_leads;

select order_id, customer_city, customer_id,price,freight_value, final_price  from order_customer_items_paid;

select order_id, product_id, seller_id, price, freight_value from order_items;

select order_id, payment_value from order_payments;

select order_id, review_score from order_reviews;

select order_id, year, product_id, category, total_price from order_status_year_price;


select product_id, cat, price from prod_cat_price;

select * from sellers;

