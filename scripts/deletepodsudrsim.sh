#!/bin/bash
while true
do
kubectl get pods -oname | grep udrsimhttp2 | head -n 1 | xargs kubectl delete
sleep 1
done
