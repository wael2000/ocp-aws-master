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

##oc patch namespace/openshift-infra -p '{"metadata":{"annotations":{"openshift.io/node-selector":"role=infra"}}}';

oadm policy add-role-to-user edit system:serviceaccount:openshift-infra:metrics-deployer   2>&1
oadm policy add-cluster-role-to-user cluster-reader system:serviceaccount:openshift-infra:heapster   2>&1
oc secrets new metrics-deployer nothing=/dev/null
oc new-app openshift/metrics-deployer-template -p CASSANDRA_PV_SIZE=9Gi -p HAWKULAR_METRICS_HOSTNAME=${METRICS_URL} -p USE_PERSISTENT_STORAGE=true 2>&1
