"Specification"

"In each of the corresponding .sql files, write a SQL statement to create each of the following views of the data in bnb.db. Note that, while views can be created from other views, each of your views should stand alone (i.e., not rely on a prior view).


No Descriptions
You might notice that when running

SELECT * FROM "listings" LIMIT 5;
the results look quite wonky! The description column contains descriptions with many line breaks, each of which are printed to your terminal.

In no_descriptions.sql, write a SQL statement to create a view named no_descriptions that includes all of the columns in the listings table except for description.


One-Bedrooms
In one_bedrooms.sql, write a SQL statement to create a view named one_bedrooms. This view should contain all listings that have exactly one bedroom. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
accommodates, from the listings table.


Available
In available.sql, write a SQL statement to create a view named available. This view should contain all dates that are available at all listings. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
date, from the availabilities table, which is the date of the availability.


Frequently Reviewed
In frequently_reviewed.sql, write a SQL statement to create a view named frequently_reviewed. This view should contain the 100 most frequently reviewed listings, sorted from most- to least-frequently reviewed. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
reviews, which is the number of reviews the listing has received.
If any two listings have the same number of reviews, sort by property_type (in alphabetical order), followed by host_name (in alphabetical order).

June Vacancies
In june_vacancies.sql, write a SQL statement to create a view named june_vacancies. This view should contain all listings and the number of days in June of 2023 that they remained vacant. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
days_vacant, which is the number of days in June of 2023, that the given listing was marked as available.


Usage
To test your views as you write them in your .sql files, you can run a query on the database by running

.read FILENAME
where FILENAME is the name of the file containing your SQL query. For example,

.read no_descriptions.sql
Keep in mind you can also use

DROP VIEW name;
where name is the name of your view, to remove a view before creating it anew."
