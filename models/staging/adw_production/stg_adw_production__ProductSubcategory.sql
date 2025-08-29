with source as (

    select * from {{ source('adw_production', 'ProductSubcategory') }}

),

renamed as (

    select
        "ProductSubcategoryID",
        "ProductCategoryID",
        "ModifiedDate",
        "rowguid",
        "Name",
        "_fivetran_deleted",
        "_fivetran_synced"

    from source

)

select * from renamed
