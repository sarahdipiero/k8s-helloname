
listPods=$(kubectl get pod | awk 'NR>1{print $1}')
arr+=($listPods)

ok=0
notok=0
echo "\nWait :\n"
for i in ${arr[@]};
do 
echo "$i ... " 
status=$(kubectl get pod $i | grep $i | awk '{print $3}')
    if [[ ! $status =~ ^Running$|^Completed$  ]]  ; then
        echo "Pod Unhealthy!"
        let notok=notok+1
    else
        echo "OK!"
      let ok=ok+1
    fi
done


echo "Healthy Pods: $ok"
echo "Unhealthy Pods: $notok"