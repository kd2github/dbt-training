{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='snapshot',
      unique_key='id',

      strategy='timestamp',
      updated_at='received_at',
    )
}}

select * from RAW.GLOBALMART.employee_details

{% endsnapshot %}