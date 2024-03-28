-- 코드를 입력하세요
SELECT A.AUTHOR_ID, B.AUTHOR_NAME, A.CATEGORY, SUM(C.SALES * A.PRICE) AS TOTAL_SALES
FROM BOOK AS A
JOIN AUTHOR AS B ON A.AUTHOR_ID = B.AUTHOR_ID
JOIN BOOK_SALES AS C ON A.BOOK_ID = C.BOOK_ID
WHERE SALES_DATE LIKE '2022-01%'
GROUP BY AUTHOR_ID, CATEGORY 
ORDER BY A.AUTHOR_ID, A.CATEGORY DESC