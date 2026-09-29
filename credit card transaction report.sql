-- credit card transaction report

-- KPI 

-- total revenue
select sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit;

-- total interest
select sum(interest_earned)  as total_interest
from credit;

-- transaction amount
select sum(total_trans_amt) as total_transaction_amount
from credit;

-- transaction count
select count(client_num) total_ransaction_count
from cust_detail;

-- total revenue ,total interest ,total ransaction count,total annual fee by card category
select card_category,
sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue,
sum(interest_earned)  as total_interest,
count(client_num) total_ransaction_count,
sum(annual_fees) as total_anual_fee
from credit
group by card_category;

-- total revenue by use chip
select Use_Chip,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit
group by use_chip;

-- total revenue by education level
select education_level,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by Education_Level;

-- transaction count and total revenue by quarter
select qtr,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue,count(client_num)as total_trans_count
from credit
group by qtr;

-- total revenue by expenditre type
select exp_type,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by Exp_type;

-- total revenue by customer job
select Customer_Job,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by customer_job;

-- total acquisition cost by card category
select card_category,sum(customer_acq_cost) as  total_acquisition_cost
from credit
group by card_category;