#pre-flight
ansible-playbook -i hosts cephadm-preflight.yml --extra-vars "ceph_origin=rhcs"

#bootstrap
cephadm bootstrap --config cephadm-bootstrap.cfg --apply-spec initial-config.yaml --mon-ip 172.20.142.101 --allow-overwrite --cleanup-on-failure
