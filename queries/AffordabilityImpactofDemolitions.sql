ALTER TABLE "demolition_fact_table"
ADD COLUMN "Net_Affordable_Homes" INTEGER,
ADD COLUMN "Net_Mid_Range_Homes" INTEGER,
ADD COLUMN "Net_High_End_Homes" INTEGER;


UPDATE "demolition_fact_table" df
SET
  "Net_Affordable_Homes" = subquery.Net_Affordable_Homes,
  "Net_Mid_Range_Homes" = subquery.Net_Mid_Range_Homes,
  "Net_High_End_Homes" = subquery.Net_High_End_Homes
FROM (
  SELECT
    df."Ward_ID",
    SUM(dd."Affordable Rental Homes for Demolition") - SUM(dd."Affordable Rental Homes Replaced") AS Net_Affordable_Homes,
    SUM(dd."Mid-Range Rental Homes for Demolition") - SUM(dd."Mid-Range Rental Homes Replaced") AS Net_Mid_Range_Homes,
    SUM(dd."High-End Rental Homes for Demolition") - SUM(dd."High-End Rental Homes Replaced") AS Net_High_End_Homes
  FROM
    "demolition_fact_table" df
  INNER JOIN
    "DemolitionDimension" dd ON df."Demolition_Key" = dd."Demolition_Key"
  GROUP BY
    df."Ward_ID"
) AS subquery
WHERE df."Ward_ID" = subquery."Ward_ID";
