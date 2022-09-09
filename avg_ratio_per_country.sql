/* Average poverty ration per country)*/
select country_name
,country_code as "Country Code"
,yr2012 as "Year 2012"
,yr2013 as "Year 2013"
,yr2014 as "Year 2014"
,yr2015 as "Year 2015"
,yr2016 as "Year 2016"
,yr2017 as "Year 2017"
,yr2018 as "Year 2018"
,yr2019 as "Year 2019"
,yr2020 as "Year 2020"
,round((yr2012 + yr2013 + yr2014+yr2015+yr2016+yr2017+yr2018+yr2019+yr2020)/9) as "AVG Poverty Ratio" 
from world_dev_ind
where series_code = 'SI.POV.NAHC'
and yr2012 is not null 
and yr2013 is not null 
and yr2014 is not null 
and yr2015 is not null
and yr2016 is not null
and yr2017 is not null
and yr2018 is not null
and yr2019 is not null
and yr2020 is not null
 