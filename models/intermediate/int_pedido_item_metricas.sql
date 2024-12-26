with
    stg_salesorderdetail as (
        select *
        from {{ ref('stg_salesorderdetail') }}
    )


    , int_pedido_item_metricas as (
        select
            PK_PEDIDO_ITEM
            , FK_PEDIDO
            , FK_PRODUTO
            , PRECO_UNITARIO
            , DESCONTO_UNITARIO
            , QUANTIDADE
            , PRECO_UNITARIO * QUANTIDADE as VALOR_BRUTO
            , PRECO_UNITARIO * (1 - DESCONTO_UNITARIO) * QUANTIDADE as VALOR_LIQUIDO
        from stg_salesorderdetail 
    )

select *
from int_pedido_item_metricas