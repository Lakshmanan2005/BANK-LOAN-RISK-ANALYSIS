use loan_details;

select * from cleaned_loan1;

SET SQL_SAFE_UPDATES = 0;


SELECT Neg_ammortization, COUNT(*) AS count
FROM cleaned_loan1
GROUP BY Neg_ammortization;

SELECT lump_sum_payment, COUNT(*) AS count
FROM cleaned_loan1
GROUP BY lump_sum_payment;

SELECT 
    Neg_ammortization,
    lump_sum_payment,
    COUNT(*) AS customer_count
FROM cleaned_loan1
GROUP BY Neg_ammortization, lump_sum_payment;

SELECT risk_flag, COUNT(*) AS customer_count
FROM cleaned_loan1
GROUP BY risk_flag;
