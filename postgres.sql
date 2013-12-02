-- get list of currently running postgres queries
SELECT pg_stat_get_backend_pid(s.backendid) AS procpid,
       pg_stat_get_backend_activity(s.backendid) AS current_query, 
       pg_stat_get_backend_client_addr(s.backendid) as ip
  FROM (SELECT pg_stat_get_backend_idset() AS backendid) AS s;

-- Number of active connections
SELECT sum(numbackends) FROM pg_stat_database;

-- Primary keys by table
SELECT
  tc.constraint_name, tc.table_name, kcu.column_name
--    , ccu.table_name AS foreign_table_name,    ccu.column_name AS foreign_column_name
FROM information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu ON tc.constraint_name = kcu.constraint_name
-- JOIN information_schema.constraint_column_usage AS ccu ON ccu.constraint_name = tc.constraint_name
   WHERE constraint_type = 'PRIMARY KEY' -- AND tc.table_name='mytable';
ORDER BY tc.table_name, kcu.column_name
   
-- Working with ctid (unique ID for each DB row)
SELECT MAX(ctid) FROM my_table
