docker-compose up --build --force-recreate --no-deps -d && 
docker tag  uniswap-interface_web  wwarodom/uniswap-interface:1.0.0 &&
docker push wwarodom/uniswap-interface:1.0.0
