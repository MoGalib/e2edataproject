{{ config(materialized='table') }}

SELECT *
FROM gold_layer.customer