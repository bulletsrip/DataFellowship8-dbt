select distinct
    ratecodeid as ratecode_id,
    {{ ratecode_type('ratecodeid') }} as ratecode_type_description,
from {{ ref('stg_trip') }}
where ratecodeid in ({{ var("ratecode_type_values") }})