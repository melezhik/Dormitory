# Dormitory

Dead simple dockerless microservice framework

# Key features

* Dead simple deploy, no yaml hassle
* Dockerfree. Just build from source code
* CICD backed in
* Nice UI for everything
* Load balancer (nginx) backed in
* Horizontal scaling at ease
* Extended with Rakulang 

# How to

```
ssh hostA
zef install --/test Dormitory
dorm node init --master # up master node
ssh hostB
zef install --/test Dormitory
dorm node init --worker # up worker node
ssh hostC
zef install --/test Dormitory
dorm node init --worker # up worker node
```

```
# on master node
firefox 127.0.0.1:3000 # master node web UI
# start config job, point hostB, hostC nodes

# deploy some services
# start service_add job

# add service1 (git URL for service1)
# add service2 (git URL for service2)
# add service3 (git URL for service3)
# so on

# change source code for service1,2,3
# commit to git
# dorm will pick up new changes
# make build and deploy it
# to all worker nodes

```

Hurrah, you have microservice cluster consists of 3 nodes and 3 microservices, with master node as a load balancer:


```
                              browser
                                |
                                |  http traffic      
                                |
                   ----- [ master node ] ----- 
                /                              \ 
               /                                \       
              /                                  \
      [hostB node]                            [hostC node]
    /      |      \                          /     |      \
   srv1   srv2    srv3                      srv1  srv2   srv3
                    \------>[ master node ]<-------/

                   http traffic between microservices
```
