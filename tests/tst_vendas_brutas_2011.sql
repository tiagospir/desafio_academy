/*
Este teste garante que as vendas brutas no ano de 2011 foram de $12.646.112,1607 conforme auditado pela contabilidade.
*/

with
    vendas_brutas_2011 as (
        select 
            sum(ip.valor_bruto) as total_vendas_brutas_2011
        from 
            {{ ref('int_pedido_item_metricas') }} as ip
        join 
            {{ ref('int_pedido_join') }} as p
            on ip.fk_pedido = p.pk_pedido
        where 
            year (p.data_pedido) = 2011

    )

select total_vendas_brutas_2011
from vendas_brutas_2011
where total_vendas_brutas_2011 not between 12646112 and 12646113