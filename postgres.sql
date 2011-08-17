-- get list of currently running postgres queries
SELECT pg_stat_get_backend_pid(s.backendid) AS procpid,
       pg_stat_get_backend_activity(s.backendid) AS current_query, 
       pg_stat_get_backend_client_addr(s.backendid) as ip
  FROM (SELECT pg_stat_get_backend_idset() AS backendid) AS s;

