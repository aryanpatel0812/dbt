
{{ config(materialized='table') }}


select *
from {{ref('clinic_appointments')}}
where appointment_date>'2024-07-11 00:00:00'
union all

select *
from {{ref('hospital_appointments')}}
where appointment_date>'2024-07-11 00:00:00'

union all

select *
from {{ref('Medical_center_appointments')}}
where appointment_date>'2024-07-11 00:00:00'