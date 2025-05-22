create database Logistics;
use Logistics;
select * from freight_data;

-- TOP 5 CITIES BY NET REVENUE --
select City,sum(Net_Revenue) as total_revenue
from freight_data
group by City
order by total_revenue DESC
LIMIT 5;

-- FREIGHT TRENDS OVER TIME --
SELECT DATE(Date) as shipment_date,
sum(Net_Revenue) as total_revenue
from freight_data 
group by shipment_date
order by shipment_date;

-- PROFIT CALCULATION --
SELECT Truck_ID,
sum(Fuel_Cost)+sum(Maintenance_Cost)+sum(Fixed_Costs) - sum(Net_Revenue) as Profit
from freight_data
group by Truck_ID
order by Profit DESC;

-- FUEL EFFICIENCY --
SELECT Truck_ID,
sum(KM_Traveled)/ NULLIF(sum(Liters),0) as km_per_liter
from Freight_data
group by Truck_ID
order by km_per_liter DESC;

-- TOP CUSTOMERS --
SELECT Customer_ID,
sum(`Weight(Kg)`) as freight_volume
from freight_data
group by Customer_ID
order by freight_volume desc;

-- Route-Level Insights (City-wise)
-- Are some cities/routes consuming more fuel?
select City,
ROUND(sum(KM_Traveled)/NULLIF(sum(Liters),0),2) as km_per_liter,
count(*) as shipments
from freight_data
group by City
order by km_per_liter desc;

-- Correlate Load Weight and Fuel Usage
-- Does higher weight reduce KM per Litre?
Select Truck_ID,
Round(avg(`Weight(Kg)`),2) as avg_weight,
Round(sum(KM_Traveled)/NULLIF(sum(Liters),0),2) as km_per_liter
from freight_data
group by Truck_ID
order by km_per_liter desc;

