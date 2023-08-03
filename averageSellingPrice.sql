/*1251. Average Selling Price*/
select prices.product_id, 
round(sum(prices.price *  unitssold.units) / sum(unitssold.units),2) 
as average_price 
from prices join unitssold 
on prices.product_id = unitssold.product_id and prices.start_date <= unitssold.purchase_date and unitssold.purchase_date <= prices.end_date
group by prices.product_id
