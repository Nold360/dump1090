# dump1090
Simple dump1090 based application stack including nginx webserver.

Based on https://github.com/ffaxl/dump1090

## Building
`docker-compose build`

## Running Stack
`docker-compose up -d`

Webinterface will be accessable on port **8123**.

## Running dump1090 
You can simple add the wanted parameters to the docker run command:
`docker-compose run app --help`

Or run it without the webserver & in foreground:
`docker-compose run app`
