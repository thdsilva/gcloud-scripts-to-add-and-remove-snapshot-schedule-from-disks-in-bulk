#!/bin/bash
for disk in  $(gcloud compute disks list --format="value(name)")
do
  $(gcloud compute disks add-resource-policies $disk --resource-policies [SCHEDULE_NAME] --zone us-east1-b) 
echo "snapshot-vm-prd added to disk:  $disk"
done

