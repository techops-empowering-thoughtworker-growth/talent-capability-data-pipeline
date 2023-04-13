SELECT employee_snapshot.employee_id,
  COUNTIF(user_archetype.archetype_id is not NULL) AS num_of_archetypes,
FROM {{ source("people_v001", "employee_snapshot")}} employee_snapshot
LEFT JOIN {{ source("capability_mart_v001", "fact_user_archetype")}} user_archetype
ON user_archetype.employee_id = CAST(employee_snapshot.employee_id AS STRING)
WHERE employee_snapshot.calendar_id = CAST(FORMAT_DATE('%Y%m%d', CURRENT_DATE()) AS INT64) 
AND employee_snapshot.employment_type = 'Employee' AND employee_snapshot.status IN ('Active','Paid-Leave','Unpaid-Leave')
GROUP BY employee_snapshot.employee_id