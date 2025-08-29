with source as (

    select * from {{ source('adw_production', 'ProductCategory') }}

),

renamed as (

    select
        "ProductCategoryID",
        "ModifiedDate",
        "rowguid",
        "Name",
        "_fivetran_deleted",
        "_fivetran_synced"

    from source

)

select * from renamed
