select distinct
    payment_type as payment_id,
    {{ payment_type('payment_type') }} as payment_type_description,
from {{ ref('stg_trip') }}
where payment_type in ({{ var("payment_type_values") }})