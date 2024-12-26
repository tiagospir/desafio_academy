with
    fct_pedido_item as (
        select *
        from {{ ref('int_pedido_item_metricas') }}
    )

select *
from fct_pedido_item