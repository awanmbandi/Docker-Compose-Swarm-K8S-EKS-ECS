aws ecs execute-command \
    --cluster ECS_Cluster_2 \
    --task a6517f75f7b0427199cd4c17431ec50d \
    --container modelgadget-webapp \
    --command "/bin/sh" \
    --interactive

aws ecs update-service --cluster ECS_Cluster_2 --service ModelGadgets-Plus-Pub-IP-V2 --enable-execute-command
