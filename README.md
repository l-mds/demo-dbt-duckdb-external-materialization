# demo-dbt-duckdb-external-materialization
This project should show case all of the external materializations provided in the dbt-duckdb 

# Setup 
- Adapt profile file to write to a database:
```yaml
path: "./database.duckdb"
```

- To create base data outcomment the following line in the dbt_project.yaml
```yaml
on-run-start: "INSTALL tpch; LOAD tpch; CALL dbgen(sf = 1);"
```

- start the first model to create the data 
```yaml
dbt run -select setup
```
# Structure 