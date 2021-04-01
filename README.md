# Minecraft-Grafana
Monitoring Minecraft servers with Grafana


# Dependencies
* python3
* grafana ( https://github.com/grafana/grafana )
* pichart-panel ( https://grafana.com/grafana/plugins/grafana-piechart-panel/ )
* InfluxDB ( https://github.com/influxdata/influxdb )
* InfluxDBClient ( https://github.com/influxdata/influxdb-python )
* mcstatus ( https://github.com/Dinnerbone/mcstatus)

You can install the dependencies via github source, or via your package manager where available.

If you install grafana via docker, you'll need to install the panel plugin via the docker shell:

    docker exec -it grafana grafana-cli plugins install grafana-piechart-panel
    
and then restart the docker instance.


# Using
You'll need to create a database for InfluxDB,  create a user, then grant that user full permissions on the database.

    $ influx <<EOF
    CREATE DATABASE	'bedrock'
    CREATE USER 'minecraft' WITH PASSWORD 'bedrock'
    GRANT ALL ON 'bedrock' TO 'minecraft'
    EXIT
    
    EOF

Update the do_updates shell script with your information, and give it a spin.

the python script has some built-in help as well as an option debug parameter which will display the data received from the minecraft server.


# Troubleshooting
Good luck!
