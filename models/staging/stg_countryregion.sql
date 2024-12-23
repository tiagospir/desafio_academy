with
    fonte_countryregion as (
        select *
        from {{ source('snowflake', 'COUNTRYREGION') }}
    )

    ,renomeado as (
        select
            cast (COUNTRYREGIONCODE as string) as pk_pais
            , cast (NAME  as string) as pais
        from fonte_countryregion
    )

select *
from renomeado 