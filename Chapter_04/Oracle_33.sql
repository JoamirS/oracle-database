-- STDDEV

SELECT * FROM VENDAS;

SELECT STDDEV(VALUE_SALE) AS SAMPLE_STANDARD_DEVIATION
    FROM VENDAS;

-- This gives you an idea of how much the sales vary around the average sales
-- in the value_sale column.

SELECT STDDEV_POP(VALUE_SALE) AS SAMPLE_STDDEV_POP
    FROM VENDAS;

-- You cannot directly use the alias itself in the GROUP BY clause.
-- Instead, you need to reference the original column or expression, not the alias.
SELECT TO_CHAR(DATE_SALE, 'MM') AS MONTH_NUMBER, STDDEV(VALUE_SALE) AS SAMPLE_STDDEV
    FROM VENDAS GROUP BY TO_CHAR(DATE_SALE, 'MM');

SELECT AVG(VALUE_SALE), MEDIAN(VALUE_SALE), STDDEV(VALUE_SALE), VARIANCE(VALUE_SALE)
    FROM VENDAS;
  
SELECT DATE_SALE, VALUE_SALE, VARIANCE(VALUE_SALE) OVER (ORDER BY VALUE_SALE) "VARIANCE",
    STDDEV(VALUE_SALE) OVER (ORDER BY VALUE_SALE) "STD DEV"
    FROM VENDAS
    ORDER BY VALUE_SALE;

-- In our output, the VARIANCE and STDDEV are calculated cumulative, and you can see
-- the final values match the aggregate results computed in the previous example.
