SELECT b.name AS 'Band Name'
FROM bands b
LEFT JOIN albums a ON a.band_id = b.ID
WHERE NOT EXISTS(SELECT * from bands WHERE a.band_id = b.id);
