
    {{ 
    config(materialized='external',
    location="./data/test.parquet"
    
    ) 
    }}

select * from {{ref("base_model")}}