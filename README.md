Riemann mongodb
=============

Simple mongodb riemann client.


A client which submits the result of db.stats() query into riemann.
A second client to monitor replication set status, using rs.status() query.
A third client to submit server status by gathering metrics from db.serverStatus() query,


Get started
==========

``` bash
gem install riemann-mongodb
riemann-mongodb --help
riemann-mongodb-rs-status --help
riemann-mongodb-serverstatus --help
```
