# Terraform-cassandra-multinode

Follow these steps to get a 3 node cassandra cluster up and running.

* Install terraform.

* Update variables.tf with proper values

* run
  ```
  terraform get
  ```

This is to install an external module for cassandra security groups.

* run
  ```
  terraform plan
  ```

Review the changes.

* run
  ```
  terraform apply
  ```

To bring up resources.  At the end you should get the public IP address
of your nodes.  run ```terraform show``` at any time to get those public ips
for the next steps.

*  Once your instances are up, ssh into each instance.  cassandra_0 and cassandra_1 are seed
nodes so you must do those one at a time.

On each node in sequence do the following steps:

  ```
  ssh -i <path2key>.pem ubuntu@<cassandra_0_ip>
  bash /root/set_cassandra.sh 0

  ssh -i <path2key>.pem ubuntu@<cassandra_1_ip>
  bash /root/set_cassandra.sh 1

  ssh -i <path2key>.pem ubuntu@<cassandra_2_ip>
  bash /root/set_cassandra.sh 2
  ```

After all the nodes are up and waiting for connection (tail -f /var/log/cassandra/system.log)
  ```
ubuntu@ip-10-2-5-172:~$ nodetool status
