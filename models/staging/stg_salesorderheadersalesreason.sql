with
    fonte_salesorderheadersalesreason as (
        select *
        from {{ source('snowflake', 'SALESORDERHEADERSALESREASON') }}
    )

    ,renomeado as (
        select
            SALESORDERID || SALESREASONID as pk_motivo_venda_por_pedido
            , cast (SALESORDERID as int) as fk_pedido_item
            , cast (SALESREASONID as int) as fk_motivo_venda
        from fonte_salesorderheadersalesreason
    )

select *
from renomeado 