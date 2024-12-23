with
    fonte_product as (
        select *
        from {{ source('snowflake', 'PRODUCT') }}
    )

    ,renomeado as (
        select
            cast (PRODUCTID as int) as pk_produtos
            , cast (NAME as string) as nome_produto
        from fonte_product
    )

select *
from renomeado 