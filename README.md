# test-ubi-centos
To test UBI (redhat) and centos (docker)image


##Use Containerfile

  $ podman build -t ubi-init-test .
  
  $ podman run -d -it --name ubi ubi-init-test
  
  $ podman exec -it ubi /bin/bash
  

##Use Dockerfile

  $ docker build -t centos-test .
  
  $ docker run -d -it --name centos centos-test
  
  $ docker exec -it centos /bin/bash
  

##For Openshift:

  tag podman image and push it to internal registry of Openshift
  
  $ podman tag localhost/ubi-init-test default-route-openshift-image-registry.apps.<clusterid.domain.com>/<project>/ubi-init-test:latest
  
  $ podman login --tls-verify=false -u <uid> -p $(oc whoami -t) default-route-openshift-image-registry.apps.<clusterid.domain.com>
  
  $ podman push --tls-verify=false default-route-openshift-image-registry.apps.<clusterid.domain.com>/<project>/ubi-init-test:latest
  

##From Openshift Console:
  
  Select your project
  
  From Developer perpective --> +Add --> Container images
  
  Select - Image stream tag from internal registry
  
  provide image details and deploy
  
  Go to pods and check terminal
  
