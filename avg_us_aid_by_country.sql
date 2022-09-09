/* Average US Aid  given by Country */
select 
ua.country_code "Country Code"
,c.country_name "Country Name"
,round(AVG(CAST(current_dollar_amount as decimal))) as "Average Aid" from us_aid ua
inner join country c on ua.country_code= c.country_code
where fiscal_year in ('2012','2013','2014','2015','2016','2017','2018','2019','2020')
group by ua.country_code,c.country_name
order by "Average Aid" asc

