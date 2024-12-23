with
    fonte_employee as (
        select *
        from {{ source('snowflake', 'EMPLOYEE') }}
    )

    ,renomeado as (
        select
            cast (BUSINESSENTITYID as int) as pk_funcionario
            , cast(JOBTITLE as string) as cargo
        from fonte_employee
    )

select *
from renomeado 