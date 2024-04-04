{% macro generate_sales(name) %}
  
        select 
        CAST(barcode_ean13 as string) as barcode,
        CAST(site_key as string) as site_key,
        product_CATEGORY as product_category,
        pdt_SUB_CATEGORY as sub_category,
        CAST(DATE as date) as date,
        ca
        from project-dbt-02.dbt_intro.crf_{{ name }}_fr_data

{% endmacro %}