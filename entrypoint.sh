#!/bin/bash
java -jar /app/my-backend.jar &
java -jar /app/my-webapp.jar &
wait -n
exit $?
