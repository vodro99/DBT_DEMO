    WITH TRIPS AS(
        select 
        RIDE_ID,
        --RIDEABLE_TYPE,
        DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIP_DATE,
        START_STATIO_ID,
        MEMBER_CSUAL,
        TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(ENDED_AT), TO_TIMESTAMP(STARTED_AT)) AS  TRIP_DURATION_SECONDS
        from {{ ref('stg_bike') }}
    )

    select * from TRIPS  