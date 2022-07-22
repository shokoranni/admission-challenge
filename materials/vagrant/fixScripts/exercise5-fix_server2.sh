#!/bin/bash




#ssh-keygen -t rsa -f /home/vagrant/.ssh/shoko-key -q -P ""
#sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/shoko-key.pub vagrant@server1

#!/bin/bash

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDtmhGB0BxyZaJjp0vgyVSXmCx7g8fSc4gu6ZXYxevf8Z58kQh77UNUhlkOGkxOkUHdv8EBhkhDrCOG0QqMv7GecD90NOV1p0lsv19SUHV7wq0IiqgEKaOz8PgCrey9tf+LbzzBlfjtU5MEhwGFSShbXBMynbcMleHeu3MepJz/Mt4XxlNlNaJcC/86h865d6TEthX+CiW1X+lMb3SN2XE9CjvvYVQt8nAAJQJWjMFwhTC9pn4E+Q8tOPxlm1jymYWBXRPQ1VqtgDvVnQcegSUl4m9p5wuYOLG9aASFZci0JGA+xOw5SbacGr+9cRJ8LaMsSHev8UeV7t1n8dhePXAbFC4sQ21J9da/TmNl1bq2l78Ff6OiQCnPO8sPkdG0SyGTQMGIgjwNxZvzqThqsLj1Ac/ONBPXYJiXmQjjpbTKEJfju0+moZsTdtiElqQlY87RTajnlE/SoEc9Nfv6iP0CB2PX7JyIoPZIZ8xiF/owEJ1Tw3tmNx705Cg1oMTgvQs= vagrant@server2" >> /home/vagrant/.ssh/authorized_keys

cat >  /home/vagrant/.ssh/shoko-key <<EOL
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
EOL

chmod 400 /home/vagrant/.ssh/shoko-key
sudo chown vagrant:vagrant /home/vagrant/.ssh/shoko-key
sudo echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
sudo systemctl restart sshd
# ssh -i /home/vagrant/.ssh/shoko-key vagrant@server1
# ssh -i /home/vagrant/.ssh/shoko-key vagrant@server2