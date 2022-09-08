## United States Foreign Aid Priorities

### Participants
* Emmanuel Okecha
* Megan Harper
* Vertta Moody
* Pradip Raodeo
* Stephen Jackson
* Steven Rufus

### Proposal
The aim of our project is to determine if there is any relationship between the amount of US foreign aid and the receiving country’s gross domestic product (GDP), total population and poverty rate between 2012 and 2020 for countries classified as “low income”. Once determined if there is any correlation, the data can also show the type of aid provided. We will load the data into a relational Postgres database.


### Method
#### Extract
* Original datasources were from World Bank (CSV) and US Aid (API) .  The CSV data was import into panadas dataframe to view information before loading into a postgres database.  While still in the dataframe columns were renamed and data cleansed using the dropna frunction,  A copy of the dataframe was taken to create a set of data for data for countries.
#### Load
* A table for this country data was created in Postgres using sqlalcemy to_sql function.   Another table world_dev_ind was created from the original dataframe .  A third table, us_aid was created by pulling data via an open API from the data.usaid.gov website.    A primary key created for country.country_code and foreign_key relationship added to country_code for us_aid and world_dev_ind


### Data Sets
* Data Source World Bank https://databank.worldbank.org/source/world-development-indicators/
* Foreign Assistance https://foreignassistance.gov/data



