# List2Pivotal

Do this

``` console
$ echo '### api

- design the API: 3
- implement it: 2pt

### web

- write tests: 1
- implement it: 2' | bundle exec ./bin/list2pivotal
```

Get this

```csv
Title,Labels,Estimate
design the API,api,3
implement it,api,2
write tests,web,1
implement it,web,2
```
