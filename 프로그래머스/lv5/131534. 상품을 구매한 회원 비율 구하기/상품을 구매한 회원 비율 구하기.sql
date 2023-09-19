-- 코드를 입력하세요
SELECT DATE_FORMAT(B.SALES_DATE,'%Y') as YEAR,
       DATE_FORMAT(B.SALES_DATE,'%m') as MONTH,
       COUNT(DISTINCT(B.USER_ID)) 'PUCHASED_USERS',
       ROUND(COUNT(DISTINCT(B.USER_ID)) / (SELECT COUNT(DISTINCT(A.USER_ID)) FROM USER_INFO A WHERE DATE_FORMAT(A.JOINED, '%Y') = 2021), 1) 'PUCHASED_RATIO'
FROM USER_INFO A, ONLINE_SALE B
WHERE A.USER_ID = B.USER_ID
AND DATE_FORMAT(A.JOINED, '%Y') = '2021'
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH;

