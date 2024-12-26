with
    stg_creditcard as (
        select *
        from {{ ref('stg_creditcard') }}
    )

    , stg_salesorderheader as (
        select *
        from {{ ref('stg_salesorderheader') }}
    )

    , int_pedido_join as (
        select
            p.PK_PEDIDO
            , p.FK_CLIENTE
            , p.FK_FUNCIONARIO
            , p.FK_TERRITORIO
            , p.DATA_PEDIDO
            , p.DATA_ENVIO
            , p.STATUS_PEDIDO
            , c.tipo_cartao
        from stg_salesorderheader as p
        left join stg_creditcard as c
            on p.fk_cartao = c.pk_cartao 
    )

select *
from int_pedido_join