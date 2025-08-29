with source as (

    select * from {{ source('adw_production', 'Product') }}

),

renamed as (

    select
        "ProductID",
        "Size",
        "ListPrice",
        "ModifiedDate",
        "rowguid",
        "Name",
        "ReorderPoint",
        "SellStartDate",
        "DaysToManufacture",
        "DiscontinuedDate",
        "Style",
        "StandardCost",
        "ProductModelID",
        "ProductSubcategoryID",
        "ProductLine",
        "MakeFlag",
        "SizeUnitMeasureCode",
        "Color",
        "SafetyStockLevel",
        "ProductNumber",
        "Weight",
        "FinishedGoodsFlag",
        "SellEndDate",
        "Class",
        "WeightUnitMeasureCode",
        "_fivetran_deleted",
        "_fivetran_synced"

    from source

)

select * from renamed
