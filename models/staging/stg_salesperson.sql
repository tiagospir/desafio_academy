with
    fonte_salesperson as (
        select *
        from {{ source('snowflake', 'SALESPERSON') }}
    )

    ,renomeado as (
        select
            cast (BUSINESSENTITYID as int) as pk_vendapessoa
            , cast(TERRITORYID as int) as fk_territorio
        from fonte_salesperson
    )

select *
from renomeado 