with
    fonte_address as (
        select *
        from {{ source('snowflake', 'ADDRESS') }}
    )

    ,renomeado as (
        select
            cast (ADDRESSID as int) as pk_territorio
            , cast (STATEPROVINCEID as int) as fk_estado
            , cast (CITY  as string) as cidade
        from fonte_address
    )

select *
from renomeado 