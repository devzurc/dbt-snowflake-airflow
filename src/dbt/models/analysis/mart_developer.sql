WITH transform AS (
    SELECT ID
        , NAME
        , DESCRIPTION
        , COUNT(*) AS QTD_DEVELOPER
FROM
    {{ ref('prepped_developer') }}
GROUP BY
    id, name, description
)

SELECT * FROM transform