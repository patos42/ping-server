* This container will ping 8.8.8.8 every second.
* The fist successful ping is logged with the time.
* All failed pings are logged with the time.
* The first successful ping after a failed ping is also logged. Subsequent successful pings are not logged.
* Logs can be viewed inside the Docker Desktop app under Containers->ping-server or using Portainer (https://www.portainer.io/)

Another useful tool to check for internet uptime is: https://hub.docker.com/r/linuxserver/smokeping
