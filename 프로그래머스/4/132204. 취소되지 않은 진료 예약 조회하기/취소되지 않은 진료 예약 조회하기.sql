SELECT a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
FROM APPOINTMENT a 
JOIN PATIENT p ON a.PT_NO = p.PT_NO
JOIN DOCTOR d ON a.MDDR_ID = d.DR_ID
WHERE a.APNT_YMD LIKE "2022-04-13%"
AND APNT_CNCL_YN = "N"
ORDER BY a.APNT_YMD