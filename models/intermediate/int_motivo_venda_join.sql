with
    stg_salesreason as (
        select *
        from {{ ref('stg_salesreason') }}
    )

    , stg_salesorderheadersalesreason as (
        select *
        from {{ ref('stg_salesorderheadersalesreason') }}
    )

    , int_motivo_venda_join as (
        select
            vm.pk_motivo_venda_por_pedido
            , vm.fk_pedido_item
            , m.motivo_venda
            , m.razao_venda
        from stg_salesorderheadersalesreason as vm
        left join stg_salesreason as m
            on vm.fk_motivo_venda = m.pk_motivo_venda
    )

select *
from int_motivo_venda_join