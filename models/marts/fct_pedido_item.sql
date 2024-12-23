with
    fct_pedido_item as (
        select *
        from {{ ref('stg_salesorderdetail') }}
    )

select *
from fct_pedido_item