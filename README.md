# 🚛 Logistics Fuel Efficiency Analysis

## 📌 Project Overview

This real-world project focuses on analyzing logistics data involving trucks, freight, and fuel to identify inefficiencies and reduce fuel costs. Using Python, SQL, and Power BI, the aim was to help optimize operations in a data-driven way.

---

## 🛠 Tools & Technologies
- **Python** (Pandas, Matplotlib, Seaborn)
- **SQL** (MySQL)
- **Power BI** (Interactive dashboard and insights)
- **Jupyter Notebook / VS Code**

---

## 📁 Dataset Description

The project is based on 3 datasets:

1. **Dimensions**  
   - `DriverID`: Unique ID of the driver  
   - `DriverName`: Name of the driver  

2. **Freight**  
   - `Date`: Delivery date  
   - `CustomerID`: ID of the customer  
   - `TruckID`: Truck used  
   - `InvoiceNumber`: Unique invoice  
   - `FreightID`: Freight identifier  
   - `City`: Delivery location  
   - `NetRevenue`: Revenue from delivery  
   - `Weight(kg)`: Weight of the shipment in kilograms  
   - `Weight(cubic)`: Volume of the shipment  
   - `GoodsValue`: Total value of the shipped goods  

3. **Fuel Costs (fcosts)**  
   - `Date`: Date of operation  
   - `TruckID`: Vehicle identifier  
   - `DriverID`: Driver associated  
   - `Fuel`: Fuel cost  
   - `KM Travelled`: Distance covered  
   - `Litres`: Fuel used  
   - `FixedCosts`, `Maintenance`: Additional costs

---

## 🎯 Objective

To identify key patterns and suggestions that help reduce fuel costs and improve the logistics efficiency of trucks and drivers.

---

## 🔍 Key Analysis Performed

- Merged and cleaned datasets using Python
- Calculated **Fuel Efficiency = KM Travelled / Litres**
- Identified trucks and drivers with poor fuel efficiency
- Tracked **Revenue by City**, **Goods Weight**, and **Fuel Usage**
- Found actionable insights that can reduce fuel expenses by **~15%**

---

## 📊 Power BI Dashboard

**Dashboard Highlights:**
- Net Revenue by City
- Fuel Efficiency by Truck & Driver
- Weight & Revenue correlation
- Monthly trends
- Interactive filters by city, truck, and drive

---

## 💡 Insights & Recommendations

1. **Low Efficiency Trucks**: Specific trucks consumed more fuel per km. Recommend maintenance or replacement.
2. **Driver Training**: Variance in driver performance suggests training could improve fuel usage.
3. **City Routes**: Some cities consistently showed low revenue-to-cost ratios. Consider rerouting or repricing.
4. **Cost Reduction**: Addressing 3 inefficiencies could reduce fuel costs by **up to 15%**.

---
