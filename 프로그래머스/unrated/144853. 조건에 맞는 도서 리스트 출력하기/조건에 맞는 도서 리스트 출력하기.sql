-- 코드를 입력하세요
SELECT BOOK_ID, TO_CHAR(PUBLISHED_DATE,'YYYY-MM-DD') as PUBLISHED_DATE 
FROM BOOK
WHERE CATEGORY ='인문' and TO_CHAR(PUBLISHED_DATE,'YYYY') ='2021'
order by PUBLISHED_DATE ASC;