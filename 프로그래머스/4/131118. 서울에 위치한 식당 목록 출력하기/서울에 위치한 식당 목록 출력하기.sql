-- 코드를 입력하세요
SELECT i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO i JOIN REST_REVIEW r ON i.REST_ID = r.REST_ID
WHERE ADDRESS LIKE "서울%"
GROUP BY i.REST_ID
ORDER BY SCORE DESC, FAVORITES DESC