
## Required environment variables
```sh
export DD_AGENT_HOST=<DD_AGENT_HOST>
export DD_API_KEY=<DataDog API Key>
export REDIS_UPSTREAM_IP=<Redis Master IP Address>
export REDIS_UPSTREAM_PORT=<Redis Master Port>
export REDIS_UPSTREAM_PASSWORD='<Redis Master Password>'
```

## Build and run
```
docker-compose up -d --build
```

## Clean up
```
docker-compose down --rmi all
```


