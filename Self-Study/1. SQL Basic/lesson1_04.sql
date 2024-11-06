-- To merge two or more strings
-- CONCAT(<string_A>, <string_B>, <string_C>, ...)
-- For example:
SELECT CONCAT('Nguyen Hoang', ' Long') FROM EXAMPLE_RELATION
-- It returns 'Nguyen Hoang Long'


  
-- ==============================================================================================================================
  
-- To select substring from a original string, we can use SUBSTRING()
-- In each specific situation, there is a corresponding statement. For example:

  
-- SUBSTRING(<string>/<feature_name>, start_character_index)
-- It returns the substring from the start_character_index character)
-- For example:
SELECT SUBSTRING('Nguyen Hoang Long', 14);
-- It returns 'Long'
-- If you query data from a relation, it is essential to be included <FROM TABLE_NAME> in your statement!
-- For example: 
SELECT SUBSTRING(customerName, 10) FROM Customers;


-- To select a substring from an original string, we can use SUBSTRING()
-- In each specific situation, there is a corresponding statement. For example:
-- SUBSTRING(<string>/<feature_name>, start_character_index, length)
-- It returns the substring starting from the start_character_index and has a specified length.
-- For example:
SELECT SUBSTRING('Nguyen Hoang Long', 8, 5);
-- It returns 'Hoang' (substring starting from position 8 with a length of 5)
-- If you query data from a relation, it is essential to include <FROM TABLE_NAME> in your statement!
-- For example:
SELECT SUBSTRING(customerName, 5, 10) FROM Customers;
-- This returns a substring of customerName starting from position 5 with a length of 10.

-- ====================================================================================================================================

-- To replace a substring in a string, we use REPLACE
-- For example:
SELECT REPLACE('Nguyen Hoang Long', ' ', '-');
-- It returns 'Nguyen-Hoang-Long'
SELECT REPLACE('Nguyen Hoang Long', 'haha', '-');
-- It returns 'Nguyen Hoang Long'

-- =====================================================================================================================================

-- To reverse a string, use REVERSE
SELECT REVERSE('Long');
-- It returns 'gnoL'
-- REVERSE(NULL) = NULL
-- With "TEXT" datatype, reverse function can not complile!
-- =====================================================================================================================================

-- To find out the length of the string, use LEN
SELECT LEN('Long');
-- It returns 4
-- LEN(NULL) = NULL
-- LEN('Long   ') = 4

KEYWORD:
CONCAT, SUBSTRING, REPLACE, REVERSE, UPPER/LOWER, LEN, 
STUFF, LEFT/RIGHT, TRIM, REPLICATE





