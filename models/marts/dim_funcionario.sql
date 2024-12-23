with
    dim_funcionario as (
        select *
        from {{ ref('int_funcionario_join') }}
    )

select *
from dim_funcionario