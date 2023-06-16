# KinD-Cluster
Deployment of simple node app on KinD Cluster using EC2 and terraform

## To deploy the app locally using docker 
 
``` sh
# Fork this git repo
git clone https://github.com/Ahmed-Shoushaa/KinD-Cluster.git
# Change to the repo directory
cd KinD-Cluster/
# Create the docker image
docker build -t node-app .
# Run the docker image on port 3000
docker run -p 3000:3000 node-app
```
Then you can access the app using the link outputed `Your-machine-ip-address:3000`
