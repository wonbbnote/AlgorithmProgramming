SELECT COUNT(*) AS FISH_COUNT, FISH_NAME
FROM FISH_INFO i JOIN FISH_NAME_INFO n ON i.FISH_TYPE = n.FISH_TYPE
GROUP BY n.FISH_NAME
ORDER BY FISH_COUNT DESC