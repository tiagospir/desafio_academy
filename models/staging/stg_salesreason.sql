with
    fonte_salesreason as (
        select *
        from {{ source('snowflake', 'SALESREASON') }}
    )

    ,renomeado as (
        select
            cast (SALESREASONID as int) as pk_motivo_venda
            , cast (NAME as string) as motivo_venda
            , cast (REASONTYPE as string) as razao_venda
        from fonte_salesreason
    )

select *
from renomeado 