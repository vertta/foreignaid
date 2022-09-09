/* Average US Aid  given by Country */
select 
ua.country_code "Country Code"
,c.country_name "Country Name"
,coalesce(round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9),0) as "Average GDP"
,round(AVG(CAST(current_dollar_amount as decimal)))::money as "Average Aid" 
,round((coalesce(round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9),0)/ round(AVG(CAST(current_dollar_amount as decimal))))) as "GDP to Aid Ratio"
from us_aid ua
inner join country c on ua.country_code= c.country_code
inner join world_dev_ind wdi on ua.country_code =  wdi.country_code 
where fiscal_year in ('2012','2013','2014','2015','2016','2017','2018','2019','2020')
and wdi.series_code = 'NY.GDP.MKTP.CD'
group by ua.country_code,c.country_name,"Average GDP"
order by "Average Aid" asc
