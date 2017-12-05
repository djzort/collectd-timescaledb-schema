explain analyze SELECT
  time_bucket('1m', tstamp) as time,
  type_inst as metric,
  avg(value)
FROM
  collectd
WHERE
  tstamp >= to_timestamp(1512422573) and tstamp <= to_timestamp(1512508973) and
  host = 'stats.house' and
  plugin = 'memory'
  group by time, type_inst
  order by time asc
