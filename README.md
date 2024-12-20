# Dormitory

Dead simple microservice framework

# How to

```
ssh hostA
zef install --/test Dormitory
dorm node init --master # bring up master node
ssh hostB
zef install --/test Dormitory
dorm node init # bring up regular node
ssh hostC
zef install --/test Dormitory
dorm node init # bring up regular node
```

```
# on master node
firefox 127.0.0.1:3000 # master node web UI
# start config job, point hostA, hostB nodes
# add service1 (git URL_service1)
# add service1 (git URL_service2)
# add service1 (git URL_service3)
# so on
```

Hurrah, you have microservice cluster consists of 3 nodes and 3 microservices:


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
```
