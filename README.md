# docker-stats
Small container for collecting and reporting container metrics via diamond to influxdb

## Deploying

This is a container we would like to be deployed on all the ECS machines
so it is deployed via [https://github.com/Clever/ecs-ops](https://github.com/Clever/ecs-ops).

1. Make your changes and push to github. Circle will build an image for you.

2. Use [ecs-ops](https://github.com/clever/ecs-ops) to deploy your changes:
	```
	$ ./ecs-ops omni-start development docker-stats
	$ ./ecs-ops omni-start production docker-stats
	```
