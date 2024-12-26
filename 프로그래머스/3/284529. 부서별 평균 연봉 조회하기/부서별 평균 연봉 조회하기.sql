SELECT e.DEPT_ID, DEPT_NAME_EN, ROUND(AVG(SAL), 0) AS AVG_SAL
FROM HR_EMPLOYEES e JOIN HR_DEPARTMENT d ON e.DEPT_ID = d.DEPT_ID
GROUP BY e.DEPT_ID
ORDER BY AVG_SAL DESC