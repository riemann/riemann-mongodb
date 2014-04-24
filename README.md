Riemann mongodb
=============

Simple mongodb riemann client.


A client which submits the result of db.stats() query into riemann.
A second client to monitor replication set status, using rs.status() query.


Get started
==========

``` bash
gem install riemann-mongodb
riemann-mongodb --help
riemann-mongodb-rs-status --help
```