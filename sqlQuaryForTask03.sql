SELECT * FROM date
WHERE ((CASE WHEN field_1 > 0 THEN 1 ELSE 0 END +
     CASE WHEN date.field_2 > date.field_3 THEN 1 ELSE 0 END +
     CASE WHEN date.field_5 < date.field_4 THEN 1 ELSE 0 END +
     CASE WHEN date.field_2 > date.field_6 THEN 1 ELSE 0 END +
     CASE WHEN date.field_2 = date.field_5 THEN 1 ELSE 0 END +
     CASE WHEN date.field_3 > 78 THEN 1 ELSE 0 END +
     CASE WHEN date.field_6 = 0 THEN 1 ELSE 0 END) ) > 3;