select id, employee_id, effort from {{ source("staffing_v000", "assignment") }}
