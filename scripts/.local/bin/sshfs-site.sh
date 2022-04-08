sudo sshfs lucas365@lucasnramos.com:/home1/lucas365/public_html /mnt/server \
  -p 2222 -o allow_other,IdentityFile=$HOME/.ssh/hostgator,HostKeyAlgorithms=+ssh-rsa
