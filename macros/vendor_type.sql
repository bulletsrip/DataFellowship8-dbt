 {#
    This macro returns the description of the payment_type 
#}

{% macro vendor_type(vendorid) -%}

    case {{ vendorid }}
        when 1 then 'Creative Mobile Technologies, LLC'
        when 2 then 'VeriFone Inc'
    end

{%- endmacro %}