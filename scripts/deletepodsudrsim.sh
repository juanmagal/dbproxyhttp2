#!/bin/bash
while true
do
kubectl get pods -oname | grep udrsim | head -n 1 | xargs kubectl delete
sleep 1
kubectl get pods -oname | grep udrsim | head -n 2 | tail -n 1 | xargs kubectl delete
sleep 1
kubectl get pods -oname | grep udrsim | head -n 3 | tail -n 1 | xargs kubectl delete
sleep 1
kubectl get pods -oname | grep udrsim | head -n 4 | tail -n -1 | xargs kubectl delete
sleep 1
done
