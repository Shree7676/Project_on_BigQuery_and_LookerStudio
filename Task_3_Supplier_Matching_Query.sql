SELECT 
  b.`Buyer ID` AS Buyer_ID,
  'Supplier1' AS Supplier,
  s1.Grade,
  s1.Finish,
  s1.`Thickness _mm_` AS Thickness_mm,
  s1.`Width _mm_` AS Width_mm,
  s1.`Gross weight _kg_` AS Weight_kg,
  s1.Quantity,
  s1.Description
FROM `vanilla-steel-project.buyer_preferences.buyer_prefs_table` b
JOIN `vanilla-steel-project.buyer_preferences.Supplier_1` s1
ON s1.Grade = b.`Preferred Grade`
  AND s1.Finish = b.`Preferred Finish`
  AND s1.`Gross weight _kg_` <= b.`Max Weight _kg_`
  AND s1.Quantity >= b.`Min Quantity`
  AND s1.`Thickness _mm_` = b.`Preferred Thickness _mm_`
  AND s1.`Width _mm_` = b.`Preferred Width _mm_`
ORDER BY Buyer_ID
-- None of the buyer have exact match
