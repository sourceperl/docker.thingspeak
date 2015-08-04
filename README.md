# thingspeak.server
ThingSpeak server (platform for IoT devices)

Expose :

tcp/3000: HTTP port

Run containers :

    docker-compose up -d

Init DB (just for first use):

    docker-compose run --rm web rake db:create
    docker-compose run --rm web rake db:schema:load
