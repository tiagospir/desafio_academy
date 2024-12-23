with
    dim_motivo_venda as (
        select *
        from {{ ref('int_motivo_venda_join') }}
    )

select *
from dim_motivo_venda