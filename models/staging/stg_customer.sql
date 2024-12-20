with
    fonte_customer as (
        select *
        from {{ source('snowflake', 'CUSTOMER') }}
    )

    ,renomeado as (
        select
            cast (CUSTOMERID as int) as pk_cliente
            , cast (PERSONID as int) as fk_pessoa
            , cast (TERRITORYID  as int) as fk_territorio
        from fonte_customer
    )

select *
from renomeado 