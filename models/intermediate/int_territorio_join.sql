with
    stg_address as (
        select *
        from {{ ref('stg_address') }}
    )

    , stg_countryregion as (
        select *
        from {{ ref('stg_countryregion') }}
    )

    , stg_stateprovince as (
        select *
        from {{ ref('stg_stateprovince') }}
    )

    , int_territorio as (
        select
            c.pk_territorio 
            , c.cidade
            , e.estado
            , p.pais
        from stg_address as c
        left join stg_stateprovince as e
            on c.fk_estado = e.pk_estado
        left join stg_countryregion as p
            on e.fk_pais = p.pk_pais
    )

select *
from int_territorio