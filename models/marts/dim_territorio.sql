with
    dim_territorio as (
        select *
        from {{ ref('int_territorio_join') }}
    )

select *
from dim_territorio