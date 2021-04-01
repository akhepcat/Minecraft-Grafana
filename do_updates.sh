#!/bin/bash
# (c) 2021 Leif Sawyer
# License: GPL 3.0 (see https://github.com/akhepcat/)
# Permanent home:  https://github.com/akhepcat/Minecraft-Grafana/
# Direct download: https://raw.githubusercontent.com/akhepcat/Minecraft-Grafana/master/do_updates.sh
# 

# assumes that br_status and mc_status are in your path


# Update the bedrock servers
for svr in mc1.example.com:25565 mc2.example.com:25566 mc3.example.com:25567
do
	host=${svr%%:*}
	port=${svr##*:}
	
	br_status --dbname bedrock --dbuser=minecraft --dbpass=bedrock ${host:+--server $host} ${port:+--port $port}
done

# Update the classic minecraft servers
for svr in mc4.example.com mc5.example.com mc6.example.com
do
	host=${svr%%:*}
	port=${svr##*:}
	
	mc_status --dbname bedrock --dbuser=minecraft --dbpass=bedrock ${host:+--server $host} ${port:+--port $port}
done
