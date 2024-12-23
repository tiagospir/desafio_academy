with
    stg_customer as (
        select *
        from {{ ref('stg_customer') }}
    )

    , stg_person as (
        select *
        from {{ ref('stg_person') }}
    )

    , int_cliente as (
        select
            c.pk_cliente
            , c.fk_territorio
            , p.nome_pessoa as nome_cliente
        from stg_customer as c
        inner join stg_person as p
            on c.fk_pessoa = p.pk_pessoa
    )

select *
from int_cliente