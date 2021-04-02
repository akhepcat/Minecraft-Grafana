# Minecraft-Grafana
Monitoring Minecraft servers with Grafana


# Dependencies
* python3
* grafana ( https://github.com/grafana/grafana )
* pichart-panel ( https://grafana.com/grafana/plugins/grafana-piechart-panel/ )
* InfluxDB 1.x ( https://github.com/influxdata/influxdb )
* InfluxDBClient ( https://github.com/influxdata/influxdb-python )
* mcstatus ( https://github.com/Dinnerbone/mcstatus)

Install the dependencies via github source, or via your package manager where available.

You can also install grafana via docker and use either the localhost interface or an http proxy ala lighthttpd/apache/nginx

Influx is best installed via native packages and not via docker.

# Using
You'll need to create a database for InfluxDB,  create a user, then grant that user full permissions on the database.
You may need to specify the db admin user/pass, depending on your configuration.

    $ influx -execute "CREATE DATABASE bedrock"
    $ influx -execute "CREATE USER minecraft WITH PASSWORD 'bedrock'"
    $ influx -execute "GRANT ALL ON bedrock TO minecraft"

Update the do_updates shell script with your information, and give it a spin.

the python script has some built-in help as well as an option debug parameter which will display the data received from the minecraft server.


# Troubleshooting
Good luck!
