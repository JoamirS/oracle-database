-- PERCENTILE_CONT

SELECT * FROM VENDAS;

-- Calculate the MEDIAN or Percentile_Cont(0,5)
SELECT PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY VALUE_SALE) AS FIRST_QUARTILE
    FROM VENDAS;

SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY VALUE_SALE) AS MEDIAN_VALUE_SALE
    FROM VENDAS;

SELECT PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY VALUE_SALE) AS THIRD_QUARTILE
    FROM VENDAS;

SELECT MEDIAN(VALUE_SALE) FROM VENDAS;
