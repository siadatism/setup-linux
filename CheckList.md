* Set root password

  sudo su
  passwd

* Enable root ssh

  vim /etc/ssh/sshd.conf -> permitRootLogin=yes
  systemctl restart sshd

* Login without password from Windows:

  type $env:USERPROFILE\.ssh\id_rsa.pub | ssh root@192.168.1.100 "cat >> .ssh/authorized_keys"
  ssh root@192.168.1.100 "systemctl restart ssh.service sshd.service"

* Set apt repos

* Install required packages

* Update packages

* Modify bashrc

* Install vimrc, bashrc, htoprc

* Install docker

* Add docker repository

* Get required docker images

* Set banner

* Check firewall

  ufw status
