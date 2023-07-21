## PostgreSQL - service class-claim

```script
tanzu service class-claim create postgres-ms --class postgresql-unmanaged
```

## Deploy the app in TAP

```script
tanzu apps workload apply -f workload.yaml --yes
```
