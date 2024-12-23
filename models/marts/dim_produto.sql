with
    dim_produto as (
        select *
        from {{ ref('stg_product') }}
    )

select *
from dim_produto