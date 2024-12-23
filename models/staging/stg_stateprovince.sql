with
    fonte_stateprovince as (
        select *
        from {{ source('snowflake', 'STATEPROVINCE') }}
    )

    ,renomeado as (
        select
            cast (STATEPROVINCEID as int) as pk_estado
            , cast (COUNTRYREGIONCODE as string) as fk_pais
            , cast (NAME  as string) as estado
        from fonte_stateprovince
    )

select *
from renomeado 