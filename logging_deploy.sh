export ZONE=containerpoc.com

oadm new-project logging --node-selector=""
oc project logging   2>&1
oc new-app logging-deployer-account-template -n logging   2>&1
oadm policy add-cluster-role-to-user oauth-editor system:serviceaccount:logging:logging-deployer

oadm policy add-scc-to-user privileged system:serviceaccount:logging:aggregated-logging-fluentd   2>&1
oadm policy add-cluster-role-to-user cluster-reader system:serviceaccount:logging:aggregated-logging-fluentd   2>&1

oc create -f - <<API
apiVersion: v1
data:
  curator-nodeselector: role=infra
  curator-ops-nodeselector: role=infra
  enable-ops-cluster: "false"
  es-cluster-size: "1"
  es-instance-ram: 1024M
  es-nodeselector: failure-domain.beta.kubernetes.io/zone=us-east-1b,role=infra
  es-ops-cluster-size: "1"
  es-ops-instance-ram: 512M
  es-ops-nodeselector: role=infra
  es-ops-pvc-size: 8Gi
  es-pvc-dynamic: "false"
  es-pvc-size: 20Gi
  kibana-hostname: kibana.apps.${ZONE}
  kibana-nodeselector: ""
  kibana-ops-hostname: kibana-ops.apps.${ZONE}
  kibana-ops-nodeselector: ""
  public-master-url: https://openshift-master.${ZONE}
kind: ConfigMap
metadata:
  creationTimestamp: null
  name: logging-deployer
API

oc new-app logging-deployer-template --param MODE=install -n logging   2>&1 

oc label nodes --all logging-infra-fluentd=true   2>&1 
