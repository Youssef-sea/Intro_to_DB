-- Select the database to work with
USE alx_book_store;

-- Print the full description of the 'books' table
SELECT
    column_name,
    column_type,
    is_nullable,
    column_key,
    column_default,
    extra
FROM
    information_schema.columns
WHERE
    TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books';
