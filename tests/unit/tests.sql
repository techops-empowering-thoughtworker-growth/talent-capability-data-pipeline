{{
    config(
        tags=['unit-test', 'no-db-dependency']
    )
}}


{% call dbt_unit_testing.test('dim_employee', 'should show employee info') %}
  
  {% call dbt_unit_testing.mock_source ('people_v001', 'employee_snapshot') %}
    select 1 as employee_id, 20230410 as calendar_id, 'Employee' as employment_type, 'Active' as status
    UNION ALL
    select 2 as employee_id, 20230410 as calendar_id, 'Employee' as employment_type, 'Terminated' as status
  {% endcall %}

  {% call dbt_unit_testing.mock_source ('capability_mart_v001','fact_user_archetype') %}
    select '1' as employee_id, 'ewefw-sfwfdwe' as archetype_id
  {% endcall %}
  
  {% call dbt_unit_testing.expect() %}
    select 1 as employee_id
  {% endcall %}

{% endcall %}
