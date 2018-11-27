#!/bin/bash
declare -i var=0
echo "Pods deleted:"$var
while true
do
kubectl get pods -oname | grep eecreate | head -n 1 | xargs kubectl delete --grace-period=0 --force 
var=$var+1
echo "Pods deleted:"$var
sleep 15
kubectl get pods -oname | grep eecreate | head -n 2 | tail -n 1 | xargs kubectl delete --grace-period=0 --force
var=$var+1
echo "Pods deleted:"$var
sleep 15
kubectl get pods -oname | grep eecreate | head -n 3 | tail -n 1 | xargs kubectl delete --grace-period=0 --force
var=$var+1
echo "Pods deleted:"$var
sleep 15
kubectl get pods -oname | grep eecreate | head -n 4 | tail -n 1 | xargs kubectl delete --grace-period=0 --force
var=$var+1
echo "Pods deleted:"$var
sleep 15
done
