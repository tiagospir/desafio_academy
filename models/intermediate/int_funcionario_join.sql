with
    stg_person as (
        select *
        from {{ ref('stg_person') }}
    )

    , stg_employee as (
        select *
        from {{ ref('stg_employee') }}
    )

    , stg_salesperson as (
        select *
        from {{ ref('stg_salesperson') }}
    )

    , int_funcionario as (
        select
            f.pk_funcionario
            , vp.fk_territorio
            , p.nome_pessoa as nome_funcionario
            , f.cargo
        from stg_salesperson as vp
        inner join stg_employee as f
            on vp.pk_vendapessoa = f.pk_funcionario
        inner join stg_person as p
            on f.pk_funcionario = p.pk_pessoa
    )

select *
from int_funcionario