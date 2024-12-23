with
    fonte_salesorderdetail as (
        select *
        from {{ source('snowflake', 'SALESORDERDETAIL') }}
    )

    ,renomeado as (
        select
            cast (SALESORDERDETAILID as int) as pk_pedido_item
            , cast (SALESORDERID as int) as fk_pedido
            , cast (PRODUCTID as int) as fk_produto
            , cast (UNITPRICE as numeric) as preco_unitario
            , cast (UNITPRICEDISCOUNT as numeric) as desconto_unitario
            , cast (ORDERQTY as int) as quantidade
        from fonte_salesorderdetail
    )

select *
from renomeado 