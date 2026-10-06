create or replace package sp_value_compare

-- Determine if two values are equal or not regardless of their nullness
--
-- In Oracle, to handle comparison with NULL values, you need to use the following Oracle operators: 
-- IS NULL     the logical operation = NULL
-- IS NOT NULL the logical operation != NULL
--
-- for use in database triggers for columns that can be null
-- you can ue is_equal to compare two columns regardless of null values
--
as

function is_equal (
   p_value1     in varchar2 default null,
   p_value2     in varchar2 default null
   )
   return boolean;

function is_equal (
   p_value1     in date default null,
   p_value2     in date default null
   )
   return boolean;

function is_equal (
   p_value1     in timestamp default null,
   p_value2     in timestamp default null
   )
   return boolean;

function is_equal (
   p_value1     in clob default null,
   p_value2     in clob default null
   )
   return boolean;

--function is_equal (
--   p_value1     in blob default null,
--   p_value2     in blob default null
--   )
--   return boolean;

function is_equal (
   p_value1     in number default null,
   p_value2     in number default null
   )
   return boolean;

end sp_value_compare;
/