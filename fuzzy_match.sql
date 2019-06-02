SELECT a.*, utl_match.edit_distance('hilton', LOWER(name))
  FROM companies
 WHERE contains (concat, 'hilton' within {name}', 1) > 0
