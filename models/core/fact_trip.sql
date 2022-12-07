with trip_data as (

    select * from {{ ref('stg_trip') }}

),  

final as (

    select
        --ID
        trip_data.tripid,
        trip_data.vendorid vendor_id,
        trip_data.ratecodeid ratecode_id,
        trip_data.payment_type payment_id,
        --Time Pickup and Drop
        trip_data.tpep_pickup_datetime pickup_time,
        trip_data.tpep_dropoff_datetime dropoff_time,
        --Trip Information
        trip_data.passenger_count,
        trip_data.trip_distance,
        --Payment Information
        trip_data.fare_amount,
        trip_data.extra,
        trip_data.tip_amount,
        trip_data.tolls_amount,
        trip_data.improvement_surcharge,        
        trip_data.total_amount
    from trip_data
    where trip_data.vendorid in ({{ var("vendor_type_values") }}) and trip_data.ratecodeid in ({{ var("ratecode_type_values") }}) and trip_data.payment_type in ({{ var("payment_type_values") }})
)

select * from final