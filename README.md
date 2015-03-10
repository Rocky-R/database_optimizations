## Metrics and Findings

### Seeding
**First seed run:** 23 min
**Second seed run:** 24.8 min, run time increased by 7%. It would appear that migrating with indices before running the seed is slower.

### Run times
**First page load** 4.9 min
**Page load after indexing:** 4.37 sec, reduced run time by 98.5%
**Page load after code optimization:** 1 sec, reduced run time by 77%

### Indexing
**Add index to sequences:** .0165 sec
**Add index to genes:** .0812 sec
**Add index to hits:** .9635 sec

## Data
**Database size:** 570 MB
**Development.log size** 1.47 GB

## Final thoughts
The large log size could be mitigated by following a log rotation strategy, as detailed here:
http://www.tommyblue.it/2014/04/11/how-to-logrotate-rails-logs/

This seems to be a medium sized database; this is the size of database that medium to medium-large businesses might have. An enterprise level database would be much larger.
