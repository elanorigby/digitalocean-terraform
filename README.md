# Terraform 0.12 Update of 
# TutoriaLinux Digitalocean Terraform mini-course extravaganza!


A quick terraform tutorial for setting up load balanced web servers in digitalocean.

This repository goes along with the [free YouTube terraform course](https://www.youtube.com/watch?v=1JAx2npuprk&list=PLtK75qxsQaMIHQOaDd0Zl_jOuu1m3vcWO)

It contains the terraform code that you can use to follow along and set up a haproxy-load-balanced group of webservers.

Big TY to groovemonkey for putting this together! 🙏

## Instructions 

What you need to do is in the above linked video tutorial, but I find it useful to have these steps written down.

Change the region to your region in web1, web2, haproxy-web

export DO_TOKEN=\<token\>

export SSH_FINGERPRINT=\<fingerprint\>

terraform init

terraform plan \
-var "do_token=${DO_TOKEN}" \
-var "pub_key=$HOME/.ssh/dokey.pub" \
-var "pvt_key=$HOME/.ssh/dokey" \
-var "ssh_fingerprint=$SSH_FINGERPRINT" 

