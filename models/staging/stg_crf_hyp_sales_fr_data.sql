{{ config(
materialized='view'
) }}

with hyp_sales as (
    
    select 
    CAST(barcode_ean13 as string) as barcode,
    CAST(site_key as string) as site_key,
    product_CATEGORY as product_category,
    pdt_SUB_CATEGORY as sub_category,
    CAST(DATE as date) as date,
    ca
    from project-dbt-02.dbt_intro.crf_hyp_sales_fr_data
)
select * from hyp_sales