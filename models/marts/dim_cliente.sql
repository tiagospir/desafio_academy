with
    dim_cliente as (
        select *
        from {{ ref('int_cliente_join') }}
    )

select *
from dim_cliente