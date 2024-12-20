# Dormitory

Dead simple microservice framework

# How to

```
ssh hostA
zef install --/test Dormitory
dorm node init --master # up master node
ssh hostB
zef install --/test Dormitory
dorm node init # up regular node
ssh hostC
zef install --/test Dormitory
dorm node init # up regular node
```

```
# on master node
firefox 127.0.0.1:3000 # master node web UI
# start config job, point hostA, hostB nodes

# deploy some services
# start service_add job

# add service1 (git URL for service1)
# add service1 (git URL for service2)
# add service1 (git URL for service3)
# so on
```

Hurrah, you have microservice cluster consists of 3 nodes and 3 microservices, with master node as a load balancer:


```
                              browser
                                |
                                |  http traffic      
                                |
                   ----- [ master node ] ----- 
                 /                             \ 
               /                                \       
              /                                  \
      [hostB node]                            [hostC node]
    /      |      \                          /     |      \
   srv1   srv2    srv3                      srv1  srv2   srv3
                    \_----->[ master node ]<-------/

                http traffic between micro servers
```
