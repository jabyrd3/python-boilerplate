docker_compose('./docker-compose.yml')
docker_build('flaskboilerplate:latest', '.', 
  ignore=[],
  live_update = [
    sync('./', '/app'),
    restart_container()
  ])
