{% docs fact_trip %}
The yellow taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. The data used in the attached datasets were collected and provided to the NYC Taxi and Limousine Commission (TLC) by technology providers authorized under the Taxicab & Livery Passenger Enhancement Programs (TPEP/LPEP).
{% enddocs %}

{% docs dim_vendor %}
A code indicating the TPEP provider that provided the record.
{% enddocs %}

{% docs dim_rate_code %}
The final rate code in effect at the end of the trip.
{% enddocs %}

{% docs dim_payment %}
A payment code signifying how the passenger paid for the trip.
{% enddocs %}

