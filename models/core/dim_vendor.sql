select distinct
    vendorid as vendor_id,
    {{ vendor_type('vendorid') }} as vendor_type_description,
from {{ ref('stg_trip') }}
where vendorid in ({{ var("vendor_type_values") }})