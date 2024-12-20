with
    fonte_person as (
        select *
        from {{ source('snowflake', 'PERSON') }}
    )

    ,renomeado as (
        select
            cast (BUSINESSENTITYID as int) as pk_pessoa
            , cast (FIRSTNAME || ' ' || MIDDLENAME || ' ' || LASTNAME as string) as nome_cliente
        from fonte_person
    )

select *
from renomeado 