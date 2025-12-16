    WITH TRIPS AS(
        select 
        RIDE_ID,
        RIDEABLE_TYPE,
        DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIP_DATE,
        START_STATIO_ID,
        MEMBER_CSUAL,
        TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(ENDED_AT), TO_TIMESTAMP(STARTED_AT)) AS  TRIP_DURATION_SECONDS
        from {{ source('demo', 'bike') }}
        where RIDE_ID!='ride_id'
    )

    select * from TRIPS  