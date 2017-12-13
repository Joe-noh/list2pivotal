# List2Pivotal

Do this

``` console
$ echo '### api

- design the API: 3
- implement it: 2pt

### web

- write tests: 1
- implement it: 2' | be ./bin/list2pivotal --epic='Big Project'
```

Gets this

```csv
Title,Labels,Type,Estimate
design the API,"Big Project,api",feature,3
implement it,"Big Project,api",feature,2
write tests,"Big Project,web",feature,1
implement it,"Big Project,web",feature,2
```
