with
    fonte_salesorderheader as (
        select *
        from {{ source('snowflake', 'SALESORDERHEADER') }}
    )

    ,renomeado as (
        select
            cast (SALESORDERID as int) as pk_pedido
            , cast (CREDITCARDID as int) as fk_cartao
            , cast (CUSTOMERID as int) as fk_cliente
            , cast (SALESPERSONID as int) as fk_funcionario
            , cast (BILLTOADDRESSID as int) as fk_territorio
            , cast (ORDERDATE as date) as data_pedido
            , cast (SHIPDATE as date) as data_envio
            , cast (STATUS as int) as status_pedido
        from fonte_salesorderheader
    )

select *
from renomeado 