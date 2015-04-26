# Confluent docker image

Docker image which contains services from [Confluent platform](http://conflent.io). It is useful for local development and basic hands on with this platform. It is not recommended to use this image in production.

#####Installed services
* Kafka
* Zookeeper
* Schema Registry
* Kafka REST Proxy

###Execution
Get docker image

    docker pull chalimartines/confluent

Run image with specified port mapping

    docker run -d -p 2181:2181 -p 9092:9092 -p 8081:8081 -p 8082:8082 chalimartines/confluent
  
If you are Mac OS user with boot2docker and you would like to get from your local system to a cdh container add these port forwardings

    VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port2181,tcp,,2181,,2181"
    VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port9092,tcp,,9092,,9092"
    VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port8081,tcp,,8081,,8081"
    VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port8082,tcp,,8082,,8082"