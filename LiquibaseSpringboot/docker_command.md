```shell
  chmod +x postgres.sh
  ./postgres.sh ct_a 5400

  docker ps -a -f "name=postgres"
  docker ps -a --filter "id=33b6ae278816"
  # docker ps -aq -f "name=postgres" | while read id; do docker rm $id; done
  
  psql -h localhost -p 5432 -U postgres -d postgres -W
```