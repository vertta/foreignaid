## United States Foreign Aid Priorities

### Participants
* Emmanuel Okecha
* Megan Harper
* Vertta Moody
* Pradip Raodeo
* Stephen Jackson
* Steven Rufus

### Proposal
The aim of our project is to determine if there is any relationship between the dollar amount of US foreign aid given and the receiving country’s gross domestic product (GDP), total population and poverty rate between 2012 and 2020 for countries classified as “low income”. Once determined if there is any correlation, the data can also show the type of aid provided. We will load the data into a relational Postgres database.

### Method
#### Extract
* Our data sources are from World Bank (CSV) and US Aid (API). The CSV data was imported into pandas data frame to view information before loading into a Postgres database. While still in the data frame we renamed the columns and data cleansed using the “dropna” function. We made a copy of the data frame taken to create a set of data for the countries.
#### Transform
* We transformed the CSV data in a dataframe before loading it into the Postgres database. We again renamed columns and cleansed the data. We used the imported API data and placed it to the dataframe in order to filter the columns before importing into Postgres database with implicit datatypes.
#### Load
* We created a table for the country data in Postgres using sqlalcemy to_sql function. We also created another table, world_dev_ind, from the original dataframe. We also created a third table, us_aid, by pulling data via an open API from the data.usaid.gov website. We created a primary key based on country.country_code and we added a foreign_key relationship to country_code for us_aid and world_dev_ind. We chose this topic as the data was plentiful and offered an opportunity to see how the government spends our tax dollars on foreign aid.

### Findings
Using SQL queries, we determined the Middle East and North African region received the most aid between 2012 and 2020

### Data Sets
* Data Source World Bank https://databank.worldbank.org/source/world-development-indicators/
* Foreign Assistance https://foreignassistance.gov/data



