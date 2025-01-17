--In june_vacancies.sql, write a SQL statement to create a view named
--june_vacancies. This view should contain all listings and the number
--of days in June of 2023 that they remained vacant.
--Ensure the view contains the following columns:

--id, which is the id of the listing from the listings table.
--property_type, from the listings table.
--host_name, from the listings table.
--days_vacant, which is the number of days in June of 2023, that the given listing was marked as available.

CREATE VIEW "june_vacancies" AS
SELECT
    "listings"."id",
    "listings"."property_type",
    "listings"."host_name",
    COUNT("availabilities"."date") AS "days_vacant"

FROM
    "listings"

JOIN
    "availabilities" ON "listings"."id" = "availabilities"."listing_id"

--filter results so that only dates from June 2023 and listings available is 'TRUE"

WHERE
    "availabilities"."date"
    BETWEEN '2023-06-01' AND '2023-06-30'
    AND "availabilities"."available" = 'TRUE'

GROUP BY
    "listings"."id",
    "listings"."property_type",
    "listings"."host_name"
;
