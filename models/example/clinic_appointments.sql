
{{ config(materialized='view') }}


select *
from {{ source('gcp', 'patient_appointment') }}
where office_type='Clinic'