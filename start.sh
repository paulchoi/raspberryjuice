#!/bin/bash

java -Xmx1024M -Xms1024M -jar /minecraft/`find /minecraft/ -name "craftbukkit*.jar" | xargs basename`
