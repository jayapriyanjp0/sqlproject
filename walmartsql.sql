use covid;

show tables;

select * from walmart limit 5;
describe walmart;

delete  from walmart where Brach is null or city is null orCustomer type is null or
Gender is null orProduct line is null or Unit price is null or Quantity is null or Tax 5%  is null or Total is null or
Date is null or Time is null ;
alter table walmart rename customer covid`Customer type`type to custmer;

DELETE FROM walmart
WHERE Branch IS NULL
   OR city IS NULL
   OR 'Customertype' IS NULL
   OR Gender IS NULL
   OR 'Product line' IS NULL
   OR 'Unit price' IS NULL
   OR Quantity IS NULL
   OR 'Tax 5 %' IS NULL
   OR Total IS NULL
   OR Date IS NULL
   OR Time IS NULL;
   select count(*) from walmart;
   alter table walmart add column time_days varchar(10);
   select * from walmart;
   update walmart set time_days=case when hour(time)<=12 then 'morning'
   else 'evening'end ;
   select * from walmart limit 5;
   alter table walmart add column day_week varchar(30);
   update walmart set day_week=dayofweek(date);
   select * from walmart limit 5;
   update walmart set day_week=case when day_week='1' then 'sunday'
   when day_week='2' then 'monday' when day_week='3' then 'tuesday'
   when day_week='4' then 'wednesday' when day_week='5' then 'thursday'
   when day_week='6' then 'friday' else 'sunday' end;
   select * from walmart limit 5;
   update walmart set date=str_to_date(date_format(date,'%Y-%M,%Y'),'%Y-%m-%Y');
   alter table walmart add column month2 varchar(30);
   update walmart set month2=case when month(date)=1 then 'jan'
   when month(date)=2 then 'feb' when month(date)=3 then 'march'
   when month(date)=4 then 'apiral' when month(date)=5 then 'jun' 
   when month(date)=6 then 'july' when month(date)= 7 then 'may'
   when month(date)=8 then 'agust' when month(date)=9 then 'sep'
   when month(date)=10 then 'octo' when month(date)=11 then 'nov'
   else 'november' end;
   select month2 from walmart;
   
   select count(distinct(city)) from walmart;
   
   select city,Branch from walmart group by branch,city;
   describe walmart;
   select count(distinct('Product line')) from walmart;
   
   show tables;
   select dayofweek(date) from walmart limit 2;