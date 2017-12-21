# List2Pivotal

Do this

``` console
$ echo '### api

- design the API: 3
- implement it: 2pt

### web

- write tests: 1
- implement it: 2' | be ./bin/list2pivotal
```

Get this

```csv
Title,Labels,Type,Estimate
design the API,api,feature,3
implement it,api,feature,2
write tests,web,feature,1
implement it,web,feature,2
```
