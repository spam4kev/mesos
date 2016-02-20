# mesos
This Project holds a userdata YAML cloud-config script and startup script needed to automatically setup a machine as a mesos master and/or agent. The userData.yml file should be passed in the user data field of an OpenStack or AWS IaaS provider. It will dynamically reach out to download the startup script which checks the hosts name to determine if it should run the master service.
