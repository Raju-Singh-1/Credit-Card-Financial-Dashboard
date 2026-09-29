-- credit card customer report

-- KPI 

-- Total revenue
select sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit;

-- Total interest 
select sum(interest_earned)  as total_interest
from credit;

-- total income
select sum(income) as total_income from cust_detail;

-- avg satisafction scire
select avg(Cust_Satisfaction_Score) as avg_satis_score
from cust_detail;

-- mnthly revenue by gender 
with cte as 
(select Client_Num,month(week_start_date) monthly,sum( Annual_Fees+Total_Trans_Amt+Interest_Earned) revenue
from credit
group by Client_Num,monthly)

select c.monthly,
sum(case when cd.gender ="m" then c.revenue end ) as Male,
sum(case when cd.gender ="f" then c.revenue end ) as Female
from cte c join cust_detail cd on 
c.Client_Num=cd.Client_Num 
group by c.monthly;


-- age group revenue
select 
case when customer_age < 30 then "Under 30"
 when customer_age >= 30 and customer_age < 40  then "30-40"
 when customer_age >= 40 and customer_age < 50  then "40-50"
 when customer_age >= 50 and customer_age < 60  then "50-60"
 else "60+" end as age_group,
 sum( Annual_Fees+Total_Trans_Amt+Interest_Earned) revenue
 from credit c join cust_detail cd on 
 c.Client_Num=cd.Client_Num
 group by age_group;
 
 -- with genderwise contribution
 with cte as 
 (select c.Client_Num,
case when customer_age < 30 then "Under 30"
 when customer_age >= 30 and customer_age < 40  then "30-40"
 when customer_age >= 40 and customer_age < 50  then "40-50"
 when customer_age >= 50 and customer_age < 60  then "50-60"
 else "60+" end as age_group,
 sum( Annual_Fees+Total_Trans_Amt+Interest_Earned) revenue
 from credit c join cust_detail cd on 
 c.Client_Num=cd.Client_Num
 group by Client_Num,age_group)
 select c.age_group,
 sum(case when cd.gender="M" then c.revenue end) as male,
 sum(case when cd.gender="F" then c.revenue end) as Female
 from cte c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by c.age_group;
 
-- revenue,income,transaction amount by job category
select customer_job,sum(income) as total_income,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue,
sum(total_trans_amt)as total_transaction
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by customer_job;

-- revnue by education level
select education_level,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by Education_Level;

-- with gender wise contribution of education level
with cte as 
(select c.client_num,education_level,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
c.Client_Num=cd.Client_Num
group by client_num,Education_Level)
select c.education_level,
sum(case when cd.gender="M" then c.total_revenue end) as male,
 sum(case when cd.gender="F" then c.total_revenue end) as Female
 from cte c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by c.education_level;
 
-- revenue by state 
select state_cd,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
 from credit c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by state_cd;
 
-- revenue by dependent count
select dependent_count,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by dependent_count;
 
-- revenue by income category 
select
case when income <35000 then "low"
when income >=35000 and income <70000 then "Mid"
when income >=70000 then "high"
else "unknown" end as income_group,
sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from credit c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by income_group;
 
-- total revenue by marital status and gender
with cte as 
(select c.Client_Num,marital_status,sum(Annual_Fees+Total_Trans_Amt+Interest_Earned) as total_revenue
from  credit c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by c.client_num,Marital_Status)
 
 select c.Marital_Status,
sum(case when cd.gender="M" then c.total_revenue end) as male,
 sum(case when cd.gender="F" then c.total_revenue end) as Female
 from cte c join cust_detail cd on 
 c.client_num=cd.Client_Num
 group by Marital_Status;