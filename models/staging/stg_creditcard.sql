with
    fonte_creditcard as (
        select *
        from {{ source('snowflake', 'CREDITCARD') }}
    )

    ,renomeado as (
        select
            cast (CREDITCARDID as int) as pk_cartao
            , cast (CARDTYPE as string) as tipo_cartao
        from fonte_creditcard
    )

select *
from renomeado 