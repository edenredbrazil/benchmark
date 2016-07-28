#Node

##ApacheBench

```
This is ApacheBench, Version 2.3 <$Revision: 1706008 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 500 requests
Completed 1000 requests
Completed 1500 requests
Completed 2000 requests
Completed 2500 requests
Completed 3000 requests
Completed 3500 requests
Completed 4000 requests
Completed 4500 requests
Completed 5000 requests
Finished 5000 requests


Server Software:
Server Hostname:        localhost
Server Port:            3000

Document Path:          /api/json
Document Length:        17 bytes

Concurrency Level:      100
Time taken for tests:   5.395 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      1095000 bytes
HTML transferred:       85000 bytes
Requests per second:    926.72 [#/sec] (mean)
Time per request:       107.907 [ms] (mean)
Time per request:       1.079 [ms] (mean, across all concurrent requests)
Transfer rate:          198.20 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   6.7      0     193
Processing:    10  106  34.1     94     360
Waiting:        9  105  33.5     94     358
Total:         15  107  34.8     95     360

Percentage of the requests served within a certain time (ms)
  50%     95
  66%    111
  75%    123
  80%    130
  90%    153
  95%    170
  98%    208
  99%    234
 100%    360 (longest request)
```

##Siege

```
Lifting the server siege...
Transactions:		       16417 hits
Availability:		      100.00 %
Elapsed time:		       29.02 secs
Data transferred:	        0.27 MB
Response time:		        0.13 secs
Transaction rate:	      565.71 trans/sec
Throughput:		        0.01 MB/sec
Concurrency:		       71.90
Successful transactions:       16417
Failed transactions:	           0
Longest transaction:	        0.38
Shortest transaction:	        0.01
```

##wrk

2 threads

```
Running 30s test @ http://localhost:3000/api/json
  2 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   152.36ms  119.03ms   1.99s    93.33%
    Req/Sec     1.38k   374.73     2.45k    74.08%
  82231 requests in 30.06s, 17.57MB read
  Socket errors: connect 0, read 0, write 1, timeout 114
Requests/sec:   2735.89
Transfer/sec:    598.48KB
```

100 threads

```
Running 30s test @ http://localhost:3000/api/json
  100 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   174.51ms  112.61ms   1.99s    87.54%
    Req/Sec    24.28     11.71   200.00     64.83%
  67935 requests in 30.10s, 14.51MB read
  Socket errors: connect 0, read 0, write 0, timeout 161
Requests/sec:   2256.71
Transfer/sec:    493.65KB
```

#Elixir (env=dev)

##ApacheBench

```
This is ApacheBench, Version 2.3 <$Revision: 1706008 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 500 requests
Completed 1000 requests
Completed 1500 requests
Completed 2000 requests
Completed 2500 requests
Completed 3000 requests
Completed 3500 requests
Completed 4000 requests
Completed 4500 requests
Completed 5000 requests
Finished 5000 requests


Server Software:
Server Hostname:        127.0.0.1
Server Port:            4000

Document Path:          /api/json
Document Length:        17 bytes

Concurrency Level:      100
Time taken for tests:   4.006 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      1280000 bytes
HTML transferred:       85000 bytes
Requests per second:    1248.15 [#/sec] (mean)
Time per request:       80.119 [ms] (mean)
Time per request:       0.801 [ms] (mean, across all concurrent requests)
Transfer rate:          312.04 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   0.8      0       8
Processing:    43   79  16.1     78     142
Waiting:       42   79  16.1     78     142
Total:         43   80  16.3     79     146
WARNING: The median and mean for the initial connection time are not within a normal deviation
        These results are probably not that reliable.

Percentage of the requests served within a certain time (ms)
  50%     79
  66%     85
  75%     89
  80%     91
  90%     99
  95%    108
  98%    121
  99%    128
 100%    146 (longest request)
```

##Siege

```
Lifting the server siege...
Transactions:		       16434 hits
Availability:		      100.00 %
Elapsed time:		       29.89 secs
Data transferred:	        0.27 MB
Response time:		        0.14 secs
Transaction rate:	      549.82 trans/sec
Throughput:		        0.01 MB/sec
Concurrency:		       79.45
Successful transactions:       16434
Failed transactions:	           0
Longest transaction:	        0.71
Shortest transaction:	        0.03
```

##wrk

2 threads

```
Running 30s test @ http://localhost:4000/api/json
  2 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   136.03ms   55.12ms 600.82ms   82.04%
    Req/Sec     1.52k   448.32     2.58k    71.28%
  89755 requests in 30.07s, 21.93MB read
  Socket errors: connect 0, read 85, write 2, timeout 0
Requests/sec:   2984.69
Transfer/sec:    746.67KB
```

100 threads

```
Running 30s test @ http://localhost:4000/api/json
  100 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   137.46ms   59.67ms 633.27ms   80.74%
    Req/Sec    30.28     11.45    70.00     83.17%
  89001 requests in 30.10s, 21.74MB read
  Socket errors: connect 0, read 13, write 0, timeout 0
Requests/sec:   2956.37
Transfer/sec:    739.58KB
```

#Elixir (env=prod)

##ApacheBench

```
This is ApacheBench, Version 2.3 <$Revision: 1706008 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 500 requests
Completed 1000 requests
Completed 1500 requests
Completed 2000 requests
Completed 2500 requests
Completed 3000 requests
Completed 3500 requests
Completed 4000 requests
Completed 4500 requests
Completed 5000 requests
Finished 5000 requests


Server Software:
Server Hostname:        127.0.0.1
Server Port:            4001

Document Path:          /api/json
Document Length:        17 bytes

Concurrency Level:      100
Time taken for tests:   1.842 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      1280000 bytes
HTML transferred:       85000 bytes
Requests per second:    2714.89 [#/sec] (mean)
Time per request:       36.834 [ms] (mean)
Time per request:       0.368 [ms] (mean, across all concurrent requests)
Transfer rate:          678.72 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   1.8      0      27
Processing:     2   36  13.0     35      88
Waiting:        2   35  13.0     34      88
Total:          4   37  12.5     35      88

Percentage of the requests served within a certain time (ms)
  50%     35
  66%     39
  75%     42
  80%     45
  90%     53
  95%     62
  98%     68
  99%     73
 100%     88 (longest request)
```

##Siege

```
Lifting the server siege...
Transactions:		       16458 hits
Availability:		      100.00 %
Elapsed time:		       29.11 secs
Data transferred:	        0.27 MB
Response time:		        0.10 secs
Transaction rate:	      565.37 trans/sec
Throughput:		        0.01 MB/sec
Concurrency:		       58.13
Successful transactions:       16458
Failed transactions:	           0
Longest transaction:	        0.38
Shortest transaction:	        0.01
```

##wrk

2 threads

```
Running 30s test @ http://localhost:4001/api/json
  2 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    85.02ms   46.72ms 657.55ms   96.99%
    Req/Sec     2.45k   509.95     3.32k    73.32%
  145383 requests in 30.07s, 35.52MB read
  Socket errors: connect 0, read 260, write 6, timeout 0
Requests/sec:   4834.85
Transfer/sec:      1.18MB
```

100 threads

```
Running 30s test @ http://localhost:4001/api/json
  100 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    79.19ms   36.64ms 499.20ms   94.55%
    Req/Sec    52.84     14.76   280.00     67.94%
  156691 requests in 30.11s, 38.28MB read
  Socket errors: connect 0, read 12, write 0, timeout 0
Requests/sec:   5204.68
Transfer/sec:      1.27MB
```
