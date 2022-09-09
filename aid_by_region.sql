
/* Average US Aid  given by Region */
select ua.region_name as "Region Name"
,round(AVG(CAST(current_dollar_amount as decimal))) as "Average Aid" from us_aid ua
where fiscal_year in ('2012','2013','2014','2015','2016','2017','2018','2019','2020')
group by ua.region_name
order by "Average Aid" asc
