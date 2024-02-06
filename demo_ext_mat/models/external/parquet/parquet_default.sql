
    {{ 
    config(materialized='external') 
    }}

select * from {{ref("base_model")}}