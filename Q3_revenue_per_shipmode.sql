-- Q3. From LINEITEM, find the total revenue per shipmode
-- where the order was shipped later than the commit date.

USE SCHEMA SNOWFLAKE_SAMPLE_DATA.TPCH_SF1;

SELECT 
    L_SHIPMODE,
    SUM(L_EXTENDEDPRICE) AS TOT_REVENUE
FROM LINEITEM
WHERE L_SHIPDATE > L_COMMITDATE
GROUP BY L_SHIPMODE;
