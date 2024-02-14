#!/bin/sh
set -x
set -e

rm -rf /etc/rancher/rke2/config.yaml.d/50-*

touch /etc/rancher/rke2/config.yaml.d/50-config.yaml
cat <<"EOF" > /etc/rancher/rke2/config.yaml.d/50-config.yaml
${config}
EOF

if [ "$(systemctl is-active "${service}")" = "active" ]; then
 systemctl stop "${service}"
fi
systemctl daemon-reload
systemctl enable "${service}"
systemctl start "${service}" &

EXIT=0
max_attempts=$((${timeout} * 60 / 10))

attempts=0
interval=10
while [ "$(systemctl is-active "${service}")" != "active" ]; do
  echo "${service} status is \"$(systemctl is-active "${service}")\""
  attempts=$((attempts + 1))
  if [ $attempts -eq $max_attempts ]; then EXIT=1; break; fi
  sleep $interval;
done
echo "${service} status is \"$(systemctl is-active "${service}")\""

if [ $EXIT -eq 1 ]; then
  echo "Timed out attempting to start service:"
  echo "kubelet:"
  tail /var/lib/rancher/rke2/agent/logs/kubelet.log
  echo "containerd:"
  tail /var/lib/rancher/rke2/agent/containerd/containerd.log
fi

# get node info
if [ ! -f /etc/rancher/rke2/rke2.yaml ]; then echo "kubeconfig not found"; fi
export KUBECONFIG=/etc/rancher/rke2/rke2.yaml
PATH=$PATH:/var/lib/rancher/rke2/bin
kubectl get nodes

exit $EXIT