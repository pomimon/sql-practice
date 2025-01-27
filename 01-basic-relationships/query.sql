-- Get list of track names from artists with name starting with 'th'

SELECT
  t.name
FROM
  tracks t
JOIN
  album ab
ON
  t.albumId = ab.id
JOIN
  artist a
ON
  ab.artistId = a.id
WHERE
  a.name LIKE 'th%'
