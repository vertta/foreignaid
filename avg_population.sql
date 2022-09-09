/*Average Population*/
select 
    country_name as "Country Name"
    ,round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9) as "Average Population"
from world_dev_ind
where series_code = 'SP.POP.TOTL'
order by "Average Population" asc 


