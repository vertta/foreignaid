/* Average US Aid  given by Population to Aid */
select 
ua.country_code "Country Code"
,c.country_name "Country Name"
,coalesce(round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9),0)::decimal as "Average GDP"
,round(AVG(current_dollar_amount::decimal))::money as "Average Aid" 
,round((coalesce(round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9),0)
     / round(AVG(current_dollar_amount ::decimal)))) as "Population to Aid Ratio"
,round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9) as "Average Population"
from us_aid ua
inner join country c on ua.country_code= c.country_code
inner join world_dev_ind wdi on ua.country_code =  wdi.country_code 
where fiscal_year in ('2012','2013','2014','2015','2016','2017','2018','2019','2020')
and wdi.series_code = 'SP.POP.TOTL'
group by ua.country_code,c.country_name,"Average GDP","Average Population"
order by "Average Population" asc

