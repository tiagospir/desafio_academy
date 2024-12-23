with
    fct_pedido as (
        select *
        from {{ ref('int_pedido_join') }}
    )

select *
from fct_pedido