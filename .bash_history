oc whoami
oc get nodes
oc get pods
oadm policy add-cluster-role-to-user cluster-admin ekpoc
oadm policy add-cluster-role-to-user cluster-admin EKPoC
vi metrics_setup.sh
chmod +x metrics_setup.sh
./metrics_setup.sh 
oc get pods -n openshift-infra
oc project openshift-infra
oc get pods
oc logs metrics-deployer-4qj85
ps x
oc get users
ls
vi metrics_setup.sh 
oc get all
oc delete all,sa,templates,secrets,pvc --selector="metrics-infra"
oc delete sa,secret metrics-deployer
ls
cat metrics_setup.sh 
export ZONE=containerpoc.com
export METRICS_URL=metrics.apps.${ZONE}
oc project openshift-infra   2>&1
      oc create -f - <<API
      apiVersion: v1
      kind: ServiceAccount
      metadata:
        name: metrics-deployer
      secrets:
      - name: metrics-deployer
API

oc patch namespace/openshift-infra -p '{"metadata":{"annotations":{"openshift.io/node-selector":"role=infra"}}}';
oadm policy add-role-to-user edit system:serviceaccount:openshift-infra:metrics-deployer   2>&1
oadm policy add-cluster-role-to-user cluster-reader system:serviceaccount:openshift-infra:heapster   2>&1
oc secrets new metrics-deployer nothing=/dev/null
oc new-app openshift/metrics-deployer-template -p CASSANDRA_PV_SIZE=9Gi -p HAWKULAR_METRICS_HOSTNAME=${METRICS_URL} -p USE_PERSISTENT_STORAGE=true -p DYNAMICALLY_PROVISION_STORAGE=true 
oc get nodes --show-labels | grep us-east-1c | grep app
oc patch namespace/openshift-infra -p '{"metadata":{"annotations":{"openshift.io/node-selector":"failure-domain.beta.kubernetes.io/zone=us-east-1c"}}}';
oc edit project openshift-infra
oc edit namespace openshift-infra
oc describ namespace openshift-infra
oc describe namespace openshift-infra
oc edit namespace openshift-infra
oc get pvc
oc delete pvc
oc delete pvc metrics-cassandra-1
vi metrics_pv.yml
oc create -f metrics_pv.yml 
vi metrics_pv.yml
oc create -f metrics_pv.yml 
vi metrics_pv.yml
oc delete pv persistent
oc create -f metrics_pv.yml 
vi metrics_pv.yml 
oc create -f metrics_pv.yml 
oc delete all,sa,templates,secrets,pvc --selector="metrics-infra"
oc delete sa,secret metrics-deployer
vi metrics_setup.sh 
./metrics_setup.sh 
oc status
oc get pods
oc get pods-w
oc get events -w
oc get pods -o wide
oc get users
oadm policy add-cluster-role-to-user cluster-admin gt000
oc delete user EKPoC
vi /etc/origin/master/master-config.yaml
oc get identities
oc delete identity github:24932954
oadm policy add-cluster-role-to-user cluster-admin EKPoC
oc get identities
grep -i metrics /etc/origin/master/master-config.yaml
oc get nodes --show-labels | grep us-east-1c | grep app
oc get nodes --show-labels | grep us-east-1b | grep app
vi logging_deploy.sh
chmod +x logging_deploy.sh 
ls
cp metrics_pv.yml logging_pv.yml
vi logging_pv.yml 
oc create -f logging_pv.yml
./logging_deploy.sh 
oc get pods -n logging
oc get pods -n logging 
oc get pods -n logging -w
vi logging_deploy.sh
oc get nodes --show-labels
vi logging_deploy.sh
oc new-app logging-deployer-template --param MODE=uninstall -n logging   2>&1
vi logging_deploy.sh
oc project logging
oc get pvc
oc delete pvc logging-es-1
oc get pv
oc project default
oc delete project logging
vi logging_deploy.sh 
./logging_deploy.sh 
vi logging_deploy.sh 
oc project logging
oc get pvc
oc get pv
vi logging_deploy.sh 
oc new-app logging-deployer-template --param MODE=install -n logging
vi logging_deploy.sh 
oc new-app logging-deployer-template --param MODE=uninstall -n logging
oc new-app logging-deployer-template --param MODE=install -n logging
oc get events -w
oc get pv
oadm policy add-cluster-role-to-user cluster-admin wael2000
oc get events -w
yum install wget
ls
pwd
exit
ls
cp metrics_pv.yml persistent.yml
vi persistent.yml 
mount -t nfs fs-f7ea30be.efs.us-east-1.amazonaws.com:/ /media
yum list nfs-utils
hostname
oc get ndoes
oc get nodes
mount -t nfs -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2  fs-f7ea30be.efs.us-east-1.amazonaws.com:/ /media
ls /media/
showmount -e fs-f7ea30be.efs.us-east-1.amazonaws.com:
showmount -e fs-f7ea30be.efs.us-east-1.amazonaws.com
mount -t nfs -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2  fs-f7ea30be.efs.us-east-1.amazonaws.com:/ /media
cd /media
ls
mkdir pv1g_{1,5}
ls
mkdir pv1g_{1.5}
ls
rm pv1g_\{1.5\}/
rmdir pv1g_\{1.5\}/
mkdir pv1g_[1-5]
ls
rmdir pv1g_*
mkdir pv1g_[1-5]
ls
rm pv1g_\[1-5\]/
rmdir pv1g_\[1-5\]/
mkdir pv{1,2,5}g_{1-5}
ls
rmdir pv*
ls
mkdir pv{1,2,5}g_{1..5}
ls
mkdir pv512m_{1..5}
ls
cd ..
chown -R nfsnobody.nfsnobody media/
chmod -R 777 media
umount /media
cd
mount -t nfs -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2  fs-f7ea30be.efs.us-east-1.amazonaws.com:/pv1g_1 /media
cd /media
ls
cd 
umount cd
umount /media
ls
vi metrics_pv.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
oc get pvc -n nodejs-mongodb
oc get pv
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc get pv
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
vi persistent.yml 
oc create -f persistent.yml 
oc get pvs
oc get pv
ls
vi techpreview.js
vi /etc/origin/master/master-config.yaml
systemctl restart atomic-openshift-master.service
systemctl restart atomic-openshift-master-api.service
exit
history | grep scp
exit
ls
scp techpreview.js root@ose-master03:/root
scp techpreview.js root@ose-master03.containerpoc.com:/root
cat techpreview.js
vi /etc/origin/master/master-config.yaml
oc project
exit
oc get hostsubnet 
oc get identity 
cd /etc/origin/master/
ls
ls *.key
oc get pods -o wide
oc get hostsubnet 
cd
grep -i auditconfig /etc/origin/master/master-config.yaml
vim /etc/origin/master/master-config.yaml
vi /etc/origin/master/master-config.yaml
systemctl restart atomic-openshift-master-api.service
grep -i auditconfig /etc/origin/master/master-config.yaml
grep -i auditconfig -A 1 /etc/origin/master/master-config.yaml
oc get nodes
oc get nodes --show-lbels
oc get nodes --show-labels
oc get ndoes
oc get nodes
oc get events
oc get pods
oc get pods --all-namespaces
cat /etc/hoss
cat /etc/hosts
dig ose-node01.containerpoc.com
oc get pv
oc get nodes
oc get pods -n cicd
oc get pods --all-namespaces
oc get nodes
oc get ndows
oc get nodes
oc get nodes --show-labels
oc get nodes --show-labels | grep role=app
oc get pods 
oc get pods --all-namespaces
oc project nodejs-mongodb
oc delete node ose-app-node01.containerpoc.com
oc get ndoes
oc get nodes
oc delete node ip-10-20-4-161.ec2.internal
w
docker ps
oc get nodes
oc get projects
oc project containerpoc
oc get pods
oc get dc
oc scale dc containerpoc --replicas=0
oc get projects
oc project nodejs-mongodb
oc get pods
oc get dc
oc project
oc project nodejs-mongodb
oc get pvc
oc get pv
oc project default
oc delete project nodejs-mongodb
oc get nodes
oc get pv
oc delete project autoscale
oc get pv
oc delete pv pv1g-3
oc get pv
oc get nodes
oc get nodes --show-labels | grep 171
oc get nodes
oc get pods --all-namespaces
oc get nodes
oc get nodes --show-labels
oc get nodes 
oc project default
oc get pods
oc logs docker-registry-2-alu9j
oc get nodes
oc get dc --all-namepsaces
oc get dc --all-namespaces
oc scale helloworld-rs --replicas=0 -n uat
oc scale dc helloworld-rs --replicas=0 -n uat
oc scale dc helloworld-rs --replicas=0 -n sit
oc scale dc a-ver --replicas=0 -n ab-deployment
oc scale dc b-ver --replicas=0 -n ab-deployment
oc scale dc secret-nodejs --replicas=0 -n mysecret
oc get dc --all-namespaces
oc project openshift-infra
oc get dc
oc get pods
oc get nodes
oc get ndoes
oc get nodes
oc add node ip-10-20-4-41.ec2.internal
oadm add node
oadm
oc get nodes
oc get projects
oc project containerpoc
oc get dc
oc get pods --all-namespaces
history | grep 'oc new-app
'
exit
mkdir .master
date +%T
date +%s
date +%S
date +%x
date +%X
date +%z
date +%:z
date +%::z
date +%D
date +%F
date +%F%H
date +%Y%M%D%H%S
date +%Y%M%%D
date +%Y%M%D
date +%Y%m%d
date +%Y%m%d%H%M
cp /etc/origin/master/master-config.yaml  .master/master-config_`date +%Y%m%d%H%M`.yaml
ls .master/master-config_201701101113.yaml 
vi /etc/origin/master/master-config.yaml
cp /etc/origin/master/admin.kubeconfig .kube/config
oc get proejct
oc get project
oc edit clusterrole edit
s2i
vi /etc/sysconfig/docker 
oc project
ocd get project
oc get project
oc proejct ssl-test
oc project ssl-test
oc get po
oc rsh nodeapp2-10-a496s
oc get po
oc rsh nodeapp2-10-a496s
exit
oc get project 
oc project ssl-test 
oc get pod
oc logs nodeapp2-10-a496s 
oc rsh nodeapp2-10-a496s 
curl 172.16.8.9:8080
curl www.google.com:443
curl https://www.google.com:443
clear
curl 172.16.8.9:8080
oc get pod
curl 172.16.8.9:8080
curl https://172.16.8.9:8080
curl 172.16.8.9:8080
oc get svc
curl 172.30.166.239:443
curl https://172.30.166.239:443
wget https://172.30.166.239:443
wget https://172.30.183.68:8080
oc project
oc project eap-ssl
oc create serviceaccount eap-service-account -n eap-ssl
oc policy add-role-to-user view system:serviceaccount:$(oc project -q):eap-service-account -n $(oc project -q)
keytool
/usr/bin/keytool
pwd
ls
mkdir temp
cd temp/
git clone https://github.com/wael2000/hibernate4.git
ls
cd hibernate4/
ls
oc secret new jboss-secret server.keystore 
oc get secrets
oc secrets add serviceaccount/eap-service-account secret/jboss-secret
oc new-app jboss-eap64-openshift:1.4~https://github.com/wael2000/helloworld-rs.git --name=helloworld-rs
oc get po
oc rsh helloworld-rs-1-2zjyo
/connec/connect
Q
oc rsh helloworld-rs-1-2zjyo
oc project ssl-test 
ls
oc get pv
oc get pvc
oc policy add-role-to-user cluster-admin wael2000 -n openshift-infra
oc rsh helloworld-rs-1-2zjyo
oc project eap-ssl 
oc rsh helloworld-rs-1-2zjyo
oc get v
oc get svc
wget http://172.30.62.93
wget http://172.30.62.93:8080
wget https://172.30.62.93:8443
wget https://172.30.62.93:8080
oc project
oc get all
oc get all --show-labels 
oc delete all --selector app=helloworld-rs
ls
history | gerp oc new-app jboss-eap64-openshift
oc get pv
oc get roles
oc get users
oc get projects
oc project buildtest
oc get sa
oc desc sa builder
oc describe sa builder
oc get roles
oc get rolebinding 
oc describe rolebinding system:image-builders
oc get policybinding 
 oc describe clusterPolicyBindings :default
 oc describe localPolicyBindings :default
 oc describe policybinding :default
 oadm policy add-role-to-user system:deployer wael2000
 oadm policy remove-role-from-user cluster-admin wael2000
 oadm policy remove-role-from-user
 oadm policy remove-role-from-user -h
oadm policy remove-cluster-role-from-user cluster-admin wael2000
oc describer user wael
oc describe user wael
oc describe policyBindings :default -n wael2000
oc get policyBindings -n wael2000
 oadm policy add-role-to-user system:deployer -n buildtest
 oadm policy add-role-to-user system:deployer  wael2000 -n buildtest
oc get policyBindings -n wael2000
oc get policyBindings -n buildtest
oc get rolebinding -n buildtest
 oadm policy add-role-to-user view  wael2000 -n buildtest
oc get rolebinding -n buildtest
 oadm policy add-role-to-user system:image-puller  wael2000 -n buildtest
oc get rolebinding -n buildtest
 oadm policy add-role-to-user system:deployment-controller  wael2000 -n buildtest
 oadm policy add-role-to-user system:replication-controller  wael2000 -n buildtest
oc get rolebinding -n buildtest
oadm policy remove-cluster-role-from-user view wael2000
oadm policy remove-role-from-user view wael2000 -n buildtest
oc get rolebinding -n buildtest
oc whoami
oadm policy add-role-from-user view wael2000 -n buildtest
oadm policy add-role-to-user view wael2000 -n buildtest
oc get dc
oc scale dc cakephp-mysql-example --replicas=
oadm policy

oadm policy who-can
oadm policy who-can create deployment buildtest
oc get users
oc delete user EKPoC
oc get identities
oc delete identity github:24932954
oadm policy who-can create deployment buildtest
oadm policy who-can create deployment -n buildtest
oc get policyBindigs
oc get policyBindings
oc describe policyBindings :default
oc project buildtest
oc describe policyBindings :default
oc get rolebinding -n buildtest
oc get sa
oc desc sa deployer
oc describe sa deployer
oc get rolebinding -n buildtest
oc describe policybinding :default
 oadm policy remove-role-from-user system:replication-controller  wael2000 -n buildtest
 oadm policy remove-role-from-user system:deployment-controller  wael2000 -n buildtest
 oadm policy remove-role-from-user system:image-builder  wael2000 -n buildtest
oc describe policybinding :default 
 oadm policy remove-role-from-user system:deployer  wael2000 -n buildtest
oc describe policybinding :default
 oadm policy add-role-to-user edit gt000 -n buildtest
oc describe policybinding :default
 oadm policy remove-role-from-user system:image-puller  wael2000 -n buildtest
 oadm policy remove-role-from-user view  wael2000 -n buildtest
oc describe policybinding :default
 oadm policy add-role-to-user edit wael2000 -n buildtest
oc get pods
oadm policy remove-cluster-role-from-user system:build-strategy-docker wael2000 -n buildtest
oadm policy remove-cluster-role-from-user system:build-strategy-source wael2000 -n buildtest
oadm policy remove-cluster-role-from-user system:build-strategy-custom wael2000 -n buildtest
oc get events -w
oadm policy remove-cluster-role-from-group system:build-strategy-source system:authenticated -n buildtest
oc get events -w
oc get pods 
oadm policy add-cluster-role-to-group system:build-strategy-source system:authenticated
 oadm policy remove-role-from-user edit wael2000 -n buildtest
 oadm policy add-role-to-user view wael2000 -n buildtest
oc project
oc project eap-ssl
oc create serviceaccount eap-service-account -n eap-ssl
oc policy add-role-to-user view system:serviceaccount:$(oc project -q):eap-service-account -n $(oc project -q)
keytool
/usr/bin/keytool
pwd
ls
mkdir temp
cd temp/
git clone https://github.com/wael2000/hibernate4.git
ls
cd hibernate4/
ls
oc secret new jboss-secret server.keystore 
oc get secrets
oc secrets add serviceaccount/eap-service-account secret/jboss-secret
oc new-app jboss-eap64-openshift:1.4~https://github.com/wael2000/helloworld-rs.git --name=helloworld-rs
oc get po
oc rsh helloworld-rs-1-2zjyo
/connec/connect
Q
oc rsh helloworld-rs-1-2zjyo
oc project ssl-test 
ls
oc get pv
oc get pvc
oc policy add-role-to-user cluster-admin wael2000 -n openshift-infra
oc rsh helloworld-rs-1-2zjyo
oc project eap-ssl 
oc rsh helloworld-rs-1-2zjyo
oc get v
oc get svc
wget http://172.30.62.93
wget http://172.30.62.93:8080
wget https://172.30.62.93:8443
wget https://172.30.62.93:8080
oc project
oc get all
oc get all --show-labels 
oc delete all --selector app=helloworld-rs
ls
history | gerp oc new-app jboss-eap64-openshift
history | grep 'oc new-app jboss-eap64-openshift'
keytool -genkeypair
ls
oc get secrets
ls
oc new-app jboss-eap64-openshift:1.4~https://github.com/wael2000/helloworld-rs.git --name=helloworld-rs -e APPLICATION_HOSTNAME=127.0.01,EAP_HTTPS_SECRET=jboss-secret,EAP_HTTPS_KEYSTORE=server.keystore,EAP_HTTPS_NAME=selfsigned,EAP_HTTPS_PASSWORD=mykeystorepass
oc delete all --selector app=helloworld-rs
exit
oc project
oc get project
oc project nodejs-mongodb 
oc get hpa -w
oc get project
oc policy add-role-to-user admin wael2000 -n mysecret
oc project mysecret
oc get secret
oc get project
oc proejct nodejs-mongodb
oc project nodejs-mongodb
