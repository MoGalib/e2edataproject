-- models/address.sql
{{ config(materialized="table") }} 

select * from gold_layer.address
