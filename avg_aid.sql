/* Average Aid */

select ua.country_code as "Country Code"
,c.country_name as "Country Name"
,round(AVG(current_dollar_amount::numeric ))::money as "Average Aid" from us_aid ua
inner join country c on ua.country_code= c.country_code
where fiscal_year in ('2012','2013','2014','2015','2016','2017','2018','2019','2020')
group by ua.country_code,c.country_name
order by "Average Aid" 

