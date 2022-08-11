/* Example SQL query used to get the table for 'Computer' category */

SELECT Description,
    COUNT(CASE
        WHEN IsActive = 'Yes'
            THEN Id
        ELSE NULL
    END) AS Active,
    COUNT(CASE
        WHEN IsActive = 'No'
            THEN Id
        ELSE NULL
    END) AS NotActive
FROM ITAssetDB
WHERE Category = 'Computer'
GROUP BY Description
ORDER BY Description
